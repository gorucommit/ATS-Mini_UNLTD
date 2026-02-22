import type { CSSProperties, ReactNode } from 'react'
import './radio-ui.css'

export type RadioMode = 'TUNE' | 'SEEK' | 'SCAN'
export type ActivityState = 'idle' | 'active'

export interface ChipItem {
  label: string
  value?: string
  focused?: boolean
  editing?: boolean
  muted?: boolean
}

export interface StationHit {
  frequency: string
  label: string
  strength: number
  current?: boolean
}

export interface RadioFrameProps {
  mode: RadioMode
  children: ReactNode
  footerLabel?: string
}

export interface NowPlayingScreenProps {
  mode: RadioMode
  activity?: ActivityState
  frequency: string
  station: string
  band: string
  modulation: string
  step: string
  signalBars?: number
  rssi?: number
  snr?: number
  statusText: string
  chips: ChipItem[]
  holdProgress?: number
  holdStage?: 'click' | 'long' | 'longer'
  scanStations?: StationHit[]
}

export interface QuickEditWheelProps {
  chips: ChipItem[]
  state?: 'browse' | 'edit'
  parentMode: RadioMode
  helperText: string
}

export interface MenuOverlayProps {
  title: string
  items: string[]
  selectedIndex?: number
  helperText?: string
}

export interface DialPadOverlayProps {
  buffer: string
  selectedKey: string
  helperText?: string
}

export interface VolumeHudOverlayProps {
  level: number
  max?: number
  muted?: boolean
  delta?: number
}

const modeLabel: Record<RadioMode, string> = {
  TUNE: 'Tune',
  SEEK: 'Seek',
  SCAN: 'Scan',
}

function clamp(value: number, min: number, max: number) {
  return Math.min(Math.max(value, min), max)
}

function SignalMeter({ bars = 4 }: { bars?: number }) {
  const count = clamp(bars, 0, 5)

  return (
    <div className="radio-signal" aria-label={`Signal ${count} of 5`}>
      {Array.from({ length: 5 }, (_, index) => (
        <span
          key={index}
          className={index < count ? 'is-on' : undefined}
          style={{ '--bar': index + 1 } as CSSProperties}
        />
      ))}
    </div>
  )
}

function HoldBar({
  progress = 0,
  stage = 'click',
}: {
  progress?: number
  stage?: 'click' | 'long' | 'longer'
}) {
  const bounded = clamp(progress, 0, 1)

  return (
    <div className="hold-bar" aria-label="Hold progress thresholds">
      <div className={`hold-bar__fill is-${stage}`} style={{ width: `${bounded * 100}%` }} />
      <span className="hold-bar__tick is-click" style={{ left: '18%' }} />
      <span className="hold-bar__tick is-long" style={{ left: '56%' }} />
      <span className="hold-bar__tick is-longer" style={{ left: '86%' }} />
      <div className="hold-bar__labels">
        <span>click</span>
        <span>long</span>
        <span>longer</span>
      </div>
    </div>
  )
}

export function RadioFrame({
  mode,
  children,
  footerLabel = 'ATS MINI / STORYBOOK UI LAB',
}: RadioFrameProps) {
  return (
    <section className={`radio-frame mode-${mode.toLowerCase()}`}>
      <div className="radio-frame__bezel">
        <div className="radio-frame__badge">UNLTD</div>
        <div className="radio-frame__screen">{children}</div>
        <div className="radio-frame__footer">{footerLabel}</div>
      </div>
    </section>
  )
}

export function NowPlayingScreen({
  mode,
  activity = 'idle',
  frequency,
  station,
  band,
  modulation,
  step,
  signalBars = 4,
  rssi = -72,
  snr = 31,
  statusText,
  chips,
  holdProgress = 0.2,
  holdStage = 'click',
  scanStations = [],
}: NowPlayingScreenProps) {
  const isActive = activity === 'active'

  return (
    <div className={`radio-screen mode-${mode.toLowerCase()} state-${activity}`}>
      <div className="radio-screen__grain" aria-hidden="true" />
      <div className="radio-screen__content">
        <header className="screen-top">
          <div className="screen-top__left">
            <span className={`mode-chip mode-chip--${mode.toLowerCase()}`}>{modeLabel[mode]}</span>
            <span className={`activity-flag ${isActive ? 'is-active' : ''}`}>
              {isActive ? 'ACTIVE' : 'IDLE'}
            </span>
          </div>
          <div className="screen-top__right">
            <SignalMeter bars={signalBars} />
            <span className="top-metric">{rssi} dBm</span>
            <span className="top-metric">{snr} dB</span>
          </div>
        </header>

        <main className="screen-main">
          <div className="screen-main__headline">
            <p className="screen-label">{band} / {modulation}</p>
            <div className="screen-frequency">{frequency}</div>
            <p className="screen-station">{station}</p>
          </div>

          <div className="screen-main__meta">
            <div className="meta-pill">
              <span>STEP</span>
              <strong>{step}</strong>
            </div>
            <div className="meta-pill">
              <span>MODE</span>
              <strong>{mode}</strong>
            </div>
            <div className="meta-pill">
              <span>ENCODER</span>
              <strong>{isActive ? 'Rotate=Cancel' : 'Rotate=Action'}</strong>
            </div>
          </div>

          {mode === 'SCAN' && scanStations.length > 0 ? (
            <div className="station-list" aria-label="Scan station list">
              {scanStations.slice(0, 4).map((entry) => (
                <div key={`${entry.frequency}-${entry.label}`} className={`station-row ${entry.current ? 'is-current' : ''}`}>
                  <span className="station-row__freq">{entry.frequency}</span>
                  <span className="station-row__name">{entry.label}</span>
                  <span className="station-row__strength">{entry.strength}</span>
                </div>
              ))}
            </div>
          ) : (
            <div className={`activity-strip ${isActive ? 'is-active' : ''}`}>
              <span>{mode === 'SEEK' && isActive ? 'Seeking next lock...' : statusText}</span>
            </div>
          )}
        </main>

        <div className="chip-strip" aria-label="Quick chips">
          {chips.map((chip) => (
            <div
              key={`${chip.label}-${chip.value ?? ''}`}
              className={[
                'quick-chip',
                chip.focused ? 'is-focused' : '',
                chip.editing ? 'is-editing' : '',
                chip.muted ? 'is-muted' : '',
              ]
                .filter(Boolean)
                .join(' ')}
            >
              <span className="quick-chip__label">{chip.label}</span>
              {chip.value ? <strong className="quick-chip__value">{chip.value}</strong> : null}
            </div>
          ))}
        </div>

        <footer className="screen-footer">
          <HoldBar progress={holdProgress} stage={holdStage} />
          <p className="screen-status">{statusText}</p>
        </footer>
      </div>
    </div>
  )
}

export function QuickEditWheel({
  chips,
  state = 'browse',
  parentMode,
  helperText,
}: QuickEditWheelProps) {
  return (
    <section className="overlay overlay-panel quick-edit" aria-label="Quick edit overlay">
      <header className="overlay-header">
        <span>Quick Edit</span>
        <span className="overlay-header__meta">{parentMode} parent</span>
      </header>

      <div className={`quick-edit-wheel is-${state}`}>
        <div className="quick-edit-wheel__center">
          <strong>{state === 'edit' ? 'EDIT' : 'BROWSE'}</strong>
          <span>{state === 'edit' ? 'Rotate changes value' : 'Rotate moves ring focus'}</span>
        </div>

        {chips.map((chip, index) => {
          const angle = (360 / chips.length) * index - 90

          return (
            <div
              key={`${chip.label}-${chip.value ?? ''}-${index}`}
              className={[
                'wheel-chip',
                chip.focused ? 'is-focused' : '',
                chip.editing ? 'is-editing' : '',
              ]
                .filter(Boolean)
                .join(' ')}
              style={{ '--angle': `${angle}deg` } as CSSProperties}
            >
              <span>{chip.label}</span>
              {chip.value ? <strong>{chip.value}</strong> : null}
            </div>
          )
        })}
      </div>

      <p className="overlay-helper">{helperText}</p>
    </section>
  )
}

export function MenuOverlay({
  title,
  items,
  selectedIndex = 0,
  helperText,
}: MenuOverlayProps) {
  return (
    <section className="overlay overlay-panel menu-overlay" aria-label={`${title} menu`}>
      <header className="overlay-header">
        <span>{title}</span>
        <span className="overlay-header__meta">Rotate / Click / Long Press</span>
      </header>

      <div className="menu-list">
        {items.map((item, index) => (
          <div key={item} className={`menu-list__item ${index === selectedIndex ? 'is-selected' : ''}`}>
            <span className="menu-list__index">{String(index + 1).padStart(2, '0')}</span>
            <span className="menu-list__label">{item}</span>
            {index === selectedIndex ? <span className="menu-list__cursor">{'<'}</span> : null}
          </div>
        ))}
      </div>

      {helperText ? <p className="overlay-helper">{helperText}</p> : null}
    </section>
  )
}

export function DialPadOverlay({
  buffer,
  selectedKey,
  helperText = 'Rotate to select digit, click to commit, long press to cancel.',
}: DialPadOverlayProps) {
  const keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '.', 'BKSP', 'OK']

  return (
    <section className="overlay overlay-panel dial-pad" aria-label="Dial pad overlay">
      <header className="overlay-header">
        <span>Frequency Entry</span>
        <span className="overlay-header__meta">Timeout 5s</span>
      </header>

      <div className="dial-buffer">
        <span className="dial-buffer__label">BUF</span>
        <strong>{buffer}</strong>
      </div>

      <div className="dial-grid">
        {keys.map((key) => (
          <div key={key} className={`dial-key ${key === selectedKey ? 'is-selected' : ''}`}>
            {key}
          </div>
        ))}
      </div>

      <p className="overlay-helper">{helperText}</p>
    </section>
  )
}

export function VolumeHudOverlay({
  level,
  max = 100,
  muted = false,
  delta = 0,
}: VolumeHudOverlayProps) {
  const percent = clamp(level / max, 0, 1)

  return (
    <section className="overlay volume-hud" aria-label="Volume heads up display">
      <div className="volume-hud__label">
        <span>VOL</span>
        <strong>{muted ? 'MUTE' : level}</strong>
      </div>
      <div className="volume-hud__track">
        <div className={`volume-hud__fill ${muted ? 'is-muted' : ''}`} style={{ height: `${percent * 100}%` }} />
      </div>
      <div className={`volume-hud__delta ${delta > 0 ? 'is-up' : delta < 0 ? 'is-down' : ''}`}>
        {delta === 0 ? '0' : `${delta > 0 ? '+' : ''}${delta}`}
      </div>
    </section>
  )
}
