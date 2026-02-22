import type { CSSProperties } from 'react'
import './firmware-now-playing-320.css'

export const FIRMWARE_UI_WIDTH = 320
export const FIRMWARE_UI_HEIGHT = 170

type Operation = 'TUNE' | 'SEEK' | 'SCAN'
type Skin = 'baseline' | 'v2' | 'v3'
type QuickChipKey =
  | 'Fine'
  | 'Favorite'
  | 'Avc'
  | 'Mode'
  | 'Band'
  | 'Step'
  | 'Bandwidth'
  | 'Agc'
  | 'Sql'
  | 'Sys'
  | 'Settings'

type Datum = 'TL' | 'TR' | 'MC' | 'ML'

type ChipRect = { x: number; y: number; w: number; h: number }

const CHIP_RECTS: Record<QuickChipKey, ChipRect> = {
  Fine: { x: 4, y: 36, w: 48, h: 14 },
  Favorite: { x: 4, y: 20, w: 48, h: 14 },
  Avc: { x: 4, y: 52, w: 48, h: 14 },
  Mode: { x: 58, y: 4, w: 58, h: 34 },
  Band: { x: 118, y: 4, w: 58, h: 34 },
  Step: { x: 178, y: 4, w: 46, h: 16 },
  Bandwidth: { x: 178, y: 22, w: 46, h: 16 },
  Agc: { x: 226, y: 4, w: 46, h: 16 },
  Sql: { x: 226, y: 22, w: 46, h: 16 },
  Sys: { x: 272, y: 4, w: 46, h: 34 },
  Settings: { x: 244, y: 40, w: 74, h: 14 },
}

const COLOR = {
  bg: '#000000',
  text: '#ffffff',
  muted: '#7b7b7b',
  chipBg: '#181818', // 0x18C3
  chipFocus: '#ffff00', // TFT_YELLOW
  scale: '#636363', // 0x632C
  scaleHot: '#ff0000', // TFT_RED
  rssi: '#00ff00', // 0x07E0
  popupBg: '#181818',
  hudBg: '#080808', // 0x0841
  barOff: '#212121', // 0x2104
  sleepOn: '#ffff00',
} as const

function clamp(n: number, min: number, max: number) {
  return Math.max(min, Math.min(max, n))
}

function modeAccent(operation: Operation) {
  if (operation === 'TUNE') return '#00ff00'
  if (operation === 'SEEK') return '#ffA500'
  return '#ff0000'
}

function isEnhancedSkin(skin: Skin) {
  return skin === 'v2' || skin === 'v3'
}

function hexToRgbTriplet(hex: string) {
  const raw = hex.replace('#', '')
  const normalized = raw.length === 3 ? raw.split('').map((x) => x + x).join('') : raw
  const value = Number.parseInt(normalized, 16)
  const r = (value >> 16) & 0xff
  const g = (value >> 8) & 0xff
  const b = value & 0xff
  return `${r} ${g} ${b}`
}

function fmMarkerX(freqMhz: number, x0 = 20, x1 = 300) {
  const min = 87.5
  const max = 108.0
  const t = clamp((freqMhz - min) / (max - min), 0, 1)
  return x0 + (x1 - x0) * t
}

function fmtFreqFM(freqMhz: number) {
  return freqMhz.toFixed(2)
}

function textTransformFor(datum: Datum) {
  if (datum === 'MC') return 'translate(-50%, -50%)'
  if (datum === 'ML') return 'translate(0, -50%)'
  if (datum === 'TR') return 'translate(-100%, 0)'
  return 'none'
}

function PixelText({
  x,
  y,
  children,
  datum = 'TL',
  className,
  color,
}: {
  x: number
  y: number
  children: string
  datum?: Datum
  className?: string
  color?: string
}) {
  return (
    <div
      className={['fw320-text', className].filter(Boolean).join(' ')}
      style={{
        left: x,
        top: y,
        color,
        transform: textTransformFor(datum),
      }}
    >
      {children}
    </div>
  )
}

const HEART_GLYPH = [
  '01100110',
  '11111111',
  '11111111',
  '11111111',
  '01111110',
  '00111100',
  '00011000',
] as const

const WIFI_GLYPH = [
  '000010000',
  '000000000',
  '001000100',
  '000101000',
  '000000000',
  '010000001',
  '001000100',
  '000101000',
  '000010000',
] as const

function PixelGlyph({
  rows,
  color,
  left,
  top,
  className,
}: {
  rows: readonly string[]
  color: string
  left: number
  top: number
  className?: string
}) {
  const height = rows.length
  const width = rows[0]?.length ?? 0
  return (
    <div
      className={['fw320-px-glyph', className].filter(Boolean).join(' ')}
      style={{ left, top, width, height, color }}
    >
      {rows.flatMap((row, y) =>
        row.split('').map((cell, x) =>
          cell === '1' ? (
            <span
              key={`${x}-${y}`}
              className="fw320-px-glyph__dot"
              style={{ left: x, top: y }}
            />
          ) : null,
        ),
      )}
    </div>
  )
}

function Chip({
  rect,
  label,
  font = 'f1',
  focused = false,
  editing = false,
  enabled = true,
  skin = 'baseline',
}: {
  rect: ChipRect
  label: string
  font?: 'f1' | 'f2'
  focused?: boolean
  editing?: boolean
  enabled?: boolean
  skin?: Skin
}) {
  const border = !enabled ? COLOR.muted : editing ? COLOR.scaleHot : focused ? COLOR.chipFocus : COLOR.muted

  return (
    <div
      className={[
        'fw320-chip',
        isEnhancedSkin(skin) ? 'fw320-chip--v2' : '',
        skin === 'v3' ? 'fw320-chip--v3' : '',
        font === 'f2' ? 'fw320-chip--large' : 'fw320-chip--small',
        focused ? 'is-focused' : '',
        editing ? 'is-editing' : '',
        !enabled ? 'is-disabled' : '',
      ]
        .filter(Boolean)
        .join(' ')}
      style={{
        left: rect.x,
        top: rect.y,
        width: rect.w,
        height: rect.h,
        borderColor: border,
      }}
    >
      <div
        className={font === 'f2' ? 'fw320-chip__text fw320-chip__text--f2' : 'fw320-chip__text fw320-chip__text--f1'}
        style={{ color: enabled ? COLOR.text : COLOR.muted }}
      >
        {label}
      </div>
    </div>
  )
}

function FavoriteChip({
  rect,
  favorite = true,
  focused = false,
  editing = false,
  skin = 'baseline',
}: {
  rect: ChipRect
  favorite?: boolean
  focused?: boolean
  editing?: boolean
  skin?: Skin
}) {
  const border = editing ? COLOR.scaleHot : focused ? COLOR.chipFocus : COLOR.muted
  const centerY = rect.h / 2 + 1
  const heartX = rect.w / 2 - 10
  const textX = rect.w / 2 + 8

  return (
    <div
      className={[
        'fw320-chip',
        'fw320-chip--favorite',
        isEnhancedSkin(skin) ? 'fw320-chip--v2' : '',
        skin === 'v3' ? 'fw320-chip--v3' : '',
        focused ? 'is-focused' : '',
        editing ? 'is-editing' : '',
      ]
        .filter(Boolean)
        .join(' ')}
      style={{
        left: rect.x,
        top: rect.y,
        width: rect.w,
        height: rect.h,
        borderColor: border,
      }}
    >
      <PixelGlyph
        rows={HEART_GLYPH}
        color={favorite ? COLOR.scaleHot : COLOR.muted}
        left={Math.round(heartX - (HEART_GLYPH[0].length / 2))}
        top={Math.round(centerY - (HEART_GLYPH.length / 2))}
        className={skin === 'v3' ? 'fw320-px-glyph--v3' : ''}
      />
      <div
        className="fw320-chip__text fw320-chip__text--f1"
        style={{
          left: textX,
          top: rect.h / 2,
          transform: 'translate(-50%, -50%)',
          color: COLOR.text,
        }}
      >
        FAV
      </div>
    </div>
  )
}

function BatteryIcon({
  x,
  y,
  pct,
  w = 40,
}: {
  x: number
  y: number
  pct: number
  w?: number
}) {
  const clamped = clamp(pct, 0, 100)
  const h = 10
  const fill = Math.floor((clamped * (w - 2)) / 100)

  return (
    <div className="fw320-battery" style={{ left: x, top: y, width: w + 2, height: h }}>
      <div className="fw320-battery__body" style={{ width: w, height: h }}>
        <div
          className="fw320-battery__fill"
          style={{
            width: fill,
            height: h - 2,
            background: clamped < 20 ? COLOR.scaleHot : COLOR.rssi,
          }}
        />
        <div className="fw320-battery__pct">{clamped}</div>
      </div>
      <div className="fw320-battery__tip" />
    </div>
  )
}

function SysChip({
  rect,
  batteryPct = 100,
  wifiOn = true,
  sleepOn = false,
  focused = false,
  skin = 'baseline',
}: {
  rect: ChipRect
  batteryPct?: number
  wifiOn?: boolean
  sleepOn?: boolean
  focused?: boolean
  skin?: Skin
}) {
  const border = focused ? COLOR.chipFocus : COLOR.muted
  return (
    <div
      className={[
        'fw320-chip',
        'fw320-chip--sys',
        isEnhancedSkin(skin) ? 'fw320-chip--v2' : '',
        skin === 'v3' ? 'fw320-chip--v3' : '',
        focused ? 'is-focused' : '',
      ]
        .filter(Boolean)
        .join(' ')}
      style={{
        left: rect.x,
        top: rect.y,
        width: rect.w,
        height: rect.h,
        borderColor: border,
      }}
    >
      <BatteryIcon x={3} y={4} pct={batteryPct} w={rect.w - 6} />
      <div className="fw320-moon" style={{ left: 13, top: rect.h - 11, color: sleepOn ? COLOR.sleepOn : COLOR.muted }}>
        <span className="fw320-moon__outer" />
        <span className="fw320-moon__cutout" />
      </div>
      <PixelGlyph
        rows={WIFI_GLYPH}
        color={wifiOn ? COLOR.rssi : COLOR.muted}
        left={Math.round(rect.w - 11 - (WIFI_GLYPH[0].length / 2))}
        top={Math.round(rect.h - 11 - (WIFI_GLYPH.length / 2))}
        className={skin === 'v3' ? 'fw320-px-glyph--v3' : ''}
      />
    </div>
  )
}

function SideFade({ operation, skin = 'baseline' }: { operation: Operation; skin?: Skin }) {
  const accent = modeAccent(operation)
  const enhanced = isEnhancedSkin(skin)
  return (
    <>
      {Array.from({ length: 16 }, (_, x) => {
        const amount = 15 - x
        const alpha = (amount / 15) * (enhanced ? (skin === 'v3' ? 0.58 : 0.52) : 0.4)
        return (
          <div
            key={`l-${x}`}
            className={[
              'fw320-fade',
              enhanced ? 'fw320-fade--v2' : '',
              skin === 'v3' ? 'fw320-fade--v3' : '',
            ]
              .filter(Boolean)
              .join(' ')}
            style={{ left: x, background: accent, opacity: alpha }}
          />
        )
      })}
      {Array.from({ length: 16 }, (_, x) => {
        const amount = 15 - x
        const alpha = (amount / 15) * (enhanced ? (skin === 'v3' ? 0.58 : 0.52) : 0.4)
        return (
          <div
            key={`r-${x}`}
            className={[
              'fw320-fade',
              enhanced ? 'fw320-fade--v2' : '',
              skin === 'v3' ? 'fw320-fade--v3' : '',
            ]
              .filter(Boolean)
              .join(' ')}
            style={{ left: FIRMWARE_UI_WIDTH - 1 - x, background: accent, opacity: alpha }}
          />
        )
      })}
    </>
  )
}

function BottomScale({
  freqMhz,
  operation,
  rssiBars = 8,
  snrBars = 4,
  skin = 'baseline',
}: {
  freqMhz: number
  operation: Operation
  rssiBars?: number
  snrBars?: number
  skin?: Skin
}) {
  const enhanced = isEnhancedSkin(skin)
  const x0 = 20
  const x1 = 300
  const y = 140
  const markerX = fmMarkerX(freqMhz, x0, x1)
  const totalBars = 24
  const halfBars = totalBars / 2
  const rssiLit = clamp(Math.round(rssiBars), 0, halfBars)
  const snrLit = clamp(Math.round(snrBars), 0, halfBars)

  return (
    <>
      {enhanced ? (
        <>
          <div className="fw320-meter-tray fw320-meter-tray--rssi" style={{ left: 18, top: 153, width: 146, height: 12 }} />
          <div className="fw320-meter-tray fw320-meter-tray--snr" style={{ left: 164, top: 153, width: 146, height: 12 }} />
          <div className="fw320-meter-divider" style={{ left: 160, top: 151, height: 16 }} />
          <div className={skin === 'v3' ? 'fw320-scale-line-glow fw320-scale-line-glow--v3' : 'fw320-scale-line-glow'} style={{ left: x0, top: y, width: x1 - x0 + 1 }} />
        </>
      ) : null}
      <div className={enhanced ? 'fw320-scale-line fw320-scale-line--v2' : 'fw320-scale-line'} style={{ left: x0, top: y, width: x1 - x0 + 1 }} />
      {Array.from({ length: 11 }, (_, i) => {
        const x = x0 + ((x1 - x0) * i) / 10
        const h = i % 5 === 0 ? 6 : 3
        return (
          <div
            key={i}
            className={enhanced ? 'fw320-scale-tick fw320-scale-tick--v2' : 'fw320-scale-tick'}
            style={{ left: x, top: y - h, height: h * 2 + 1 }}
          />
        )
      })}

      <div
        className={[
          'fw320-scale-marker',
          enhanced ? 'fw320-scale-marker--v2' : '',
          skin === 'v3' ? 'fw320-scale-marker--v3' : '',
        ]
          .filter(Boolean)
          .join(' ')}
        style={{
          left: markerX,
          top: y - 10,
          borderBottomColor: modeAccent(operation),
          transform: 'translateX(-50%)',
        }}
      />
      {enhanced ? (
        <div
          className={skin === 'v3' ? 'fw320-scale-marker-glow fw320-scale-marker-glow--v3' : 'fw320-scale-marker-glow'}
          style={{
            left: markerX,
            top: y - 6,
            transform: 'translateX(-50%)',
            background: modeAccent(operation),
          }}
        />
      ) : null}

      <PixelText x={x0 - 2} y={y + 8} datum="TL" className="fw320-font1 fw320-muted" color={COLOR.muted}>
        {'87.5'}
      </PixelText>
      <PixelText x={x1 + 2} y={y + 8} datum="TR" className="fw320-font1 fw320-muted" color={COLOR.muted}>
        {'108.0'}
      </PixelText>

      {Array.from({ length: totalBars }, (_, i) => {
        const bx = 20 + i * 12
        let barColor = COLOR.barOff

        if (i < halfBars) {
          const lit = i < rssiLit
          if (lit) {
            barColor = i >= 7 ? COLOR.scaleHot : COLOR.rssi
          }
        } else {
          const fromRight = totalBars - 1 - i
          if (fromRight < snrLit) {
            barColor = COLOR.chipFocus
          }
        }

        return (
          <div
            key={i}
            className={[
              'fw320-meter-bar',
              enhanced ? 'fw320-meter-bar--v2' : '',
              skin === 'v3' ? 'fw320-meter-bar--v3' : '',
            ]
              .filter(Boolean)
              .join(' ')}
            style={{ left: bx, top: 156, background: barColor }}
          />
        )
      })}
    </>
  )
}

function VolumeHud({ volume = 34, skin = 'baseline' }: { volume?: number; skin?: Skin }) {
  const enhanced = isEnhancedSkin(skin)
  const w = 180
  const h = 28
  const x = (FIRMWARE_UI_WIDTH - w) / 2
  const y = FIRMWARE_UI_HEIGHT - h - 6
  const vol = clamp(volume, 0, 63)
  const barX = x + 36
  const barY = y + 8
  const barW = w - 48
  const barH = 12
  const barInnerW = barW - 2
  const fillW = Math.floor((vol * barInnerW) / 63)

  return (
    <div className={enhanced ? 'fw320-volume fw320-volume--v2' : 'fw320-volume'} style={{ left: x, top: y, width: w, height: h }}>
      <PixelText x={8} y={9} datum="TL" className="fw320-font1" color={COLOR.text}>
        {'VOL'}
      </PixelText>
      <div className={enhanced ? 'fw320-volume__bar fw320-volume__bar--v2' : 'fw320-volume__bar'} style={{ left: barX - x, top: barY - y, width: barW, height: barH }}>
        {fillW > 0 ? (
          <div
            className={[
              'fw320-volume__fill',
              enhanced ? 'fw320-volume__fill--v2' : '',
              skin === 'v3' ? 'fw320-volume__fill--v3' : '',
            ]
              .filter(Boolean)
              .join(' ')}
            style={{ width: fillW, height: barH - 2, background: vol === 0 ? COLOR.muted : COLOR.rssi }}
          />
        ) : null}
      </div>
      <PixelText x={w - 6} y={9} datum="TR" className="fw320-font1" color={COLOR.text}>
        {String(vol)}
      </PixelText>
    </div>
  )
}

function popupOptionsFor(item: QuickChipKey): string[] {
  switch (item) {
    case 'Band':
      return ['VHF', 'MW', 'SW', 'LW']
    case 'Step':
      return ['5k', '10k', '25k', '50k', '100k']
    case 'Bandwidth':
      return ['AUTO', 'WIDE', 'NAR']
    case 'Agc':
      return ['AUTO', 'ATT8', 'ATT16', 'ATT24']
    case 'Sql':
      return ['SQL:0', 'SQL:1', 'SQL:2', 'SQL:3', 'SQL:4']
    case 'Sys':
      return ['BATT SAVE', 'SLEEP', 'WIFI', 'BLE', 'CLOCK']
    case 'Favorite':
      return ['SAVE', 'RECALL', 'CLEAR', 'NAME']
    case 'Settings':
      return ['RDS', 'EiBi', 'BRIGHT', 'REGION', 'THEME']
    case 'Fine':
      return ['-50', '-25', '0', '+25', '+50']
    case 'Avc':
      return ['N/A']
    case 'Mode':
      return ['FM', 'AM', 'LSB', 'USB']
    default:
      return ['-']
  }
}

function itemLabel(item: QuickChipKey) {
  if (item === 'Fine') return 'BFO'
  if (item === 'Bandwidth') return 'BW'
  return item.toUpperCase()
}

function editableItem(item: QuickChipKey) {
  return item !== 'Avc' && item !== 'Fine'
}

function QuickPopup({
  item,
  selectedIndex = 0,
  skin = 'v3',
}: {
  item: QuickChipKey
  selectedIndex?: number
  skin?: Skin
}) {
  if (!editableItem(item)) {
    return null
  }

  const count = popupOptionsFor(item).length
  if (count === 0) {
    return null
  }

  const w = 172
  const h = 92
  const anchor = CHIP_RECTS[item]
  const preferredX = anchor.x + anchor.w / 2 - w / 2
  const x = clamp(Math.round(preferredX), 2, FIRMWARE_UI_WIDTH - w - 2)
  let y = anchor.y + anchor.h + 2
  if (y + h > FIRMWARE_UI_HEIGHT - 2) {
    y = anchor.y - h - 2
  }
  y = clamp(Math.round(y), 2, FIRMWARE_UI_HEIGHT - h - 2)

  const options = popupOptionsFor(item)
  const selected = ((selectedIndex % count) + count) % count
  const pointsUp = y < anchor.y
  const notchCenter = clamp(anchor.x + anchor.w / 2, x + 12, x + w - 12)

  return (
    <div
      className={[
        'fw320-popup',
        isEnhancedSkin(skin) ? 'fw320-popup--enhanced' : '',
        skin === 'v3' ? 'fw320-popup--v3' : '',
      ]
        .filter(Boolean)
        .join(' ')}
      style={{ left: x, top: y, width: w, height: h }}
    >
      <div
        className={[
          'fw320-popup__notch',
          pointsUp ? 'is-up' : 'is-down',
          skin === 'v3' ? 'fw320-popup__notch--v3' : '',
        ]
          .filter(Boolean)
          .join(' ')}
        style={{
          left: notchCenter - x,
          top: pointsUp ? h - 1 : -6,
        }}
      />

      <PixelText x={6} y={4} datum="TL" className={skin === 'v3' ? 'fw320-font1 fw320-popup-title fw320-popup-title--v3' : 'fw320-font1 fw320-popup-title'} color={skin === 'v3' ? 'var(--fw-accent)' : COLOR.chipFocus}>
        {itemLabel(item)}
      </PixelText>

      {Array.from({ length: 5 }, (_, row) => {
        const relative = row - 2
        const optionIndex = (selected + count + relative) % count
        const rowY = 18 + row * 14
        const selectedRow = relative === 0
        return (
          <div key={`${row}-${optionIndex}`} className="fw320-popup__row" style={{ top: rowY }}>
            {selectedRow ? (
              <div
                className={[
                  'fw320-popup__row-bg',
                  skin === 'v3' ? 'fw320-popup__row-bg--v3' : '',
                ]
                  .filter(Boolean)
                  .join(' ')}
              />
            ) : null}
            <PixelText
              x={9}
              y={1}
              datum="TL"
              className={[
                'fw320-font1',
                selectedRow ? 'fw320-popup__text--selected' : 'fw320-popup__text',
                skin === 'v3' ? 'fw320-popup__text--v3' : '',
              ]
                .filter(Boolean)
                .join(' ')}
              color={selectedRow ? (skin === 'v3' ? 'var(--fw-accent)' : COLOR.chipFocus) : COLOR.text}
            >
              {options[optionIndex]}
            </PixelText>
          </div>
        )
      })}
    </div>
  )
}

export default function FirmwareNowPlaying320({
  previewScale = 1,
  showBackdrop = false,
  skin = 'baseline',
  operation = 'TUNE',
  freqMhz = 93.5,
  volumeHud = false,
  quickEdit = true,
  editing = false,
  focusedItem = 'Mode',
  popupIndex = 2,
}: {
  previewScale?: number
  showBackdrop?: boolean
  skin?: Skin
  operation?: Operation
  freqMhz?: number
  volumeHud?: boolean
  quickEdit?: boolean
  editing?: boolean
  focusedItem?: QuickChipKey
  popupIndex?: number
}) {
  const scale = clamp(previewScale, 1, 6)
  const rootClass = showBackdrop ? 'fw320-root fw320-root--backdrop' : 'fw320-root'
  const accent = modeAccent(operation)
  const accentRgb = hexToRgbTriplet(accent)
  const enhanced = isEnhancedSkin(skin)
  const popupOpen = quickEdit && editing
  const isFocused = (key: QuickChipKey) => quickEdit && focusedItem === key
  const screenStyle = {
    width: FIRMWARE_UI_WIDTH,
    height: FIRMWARE_UI_HEIGHT,
    ['--fw-accent' as string]: accent,
    ['--fw-accent-rgb' as string]: accentRgb,
  } as CSSProperties

  return (
    <div className={rootClass}>
      <div
        className="fw320-stage"
        style={{
          width: FIRMWARE_UI_WIDTH * scale,
          height: FIRMWARE_UI_HEIGHT * scale,
        }}
      >
        <div
          className="fw320-native-wrap"
          style={{
            width: FIRMWARE_UI_WIDTH,
            height: FIRMWARE_UI_HEIGHT,
            transform: `scale(${scale})`,
            transformOrigin: 'top left',
          }}
        >
          <div
            className={[
              'fw320-screen',
              enhanced ? 'fw320-screen--v2' : '',
              skin === 'v3' ? 'fw320-screen--v3' : '',
              `fw320-op-${operation.toLowerCase()}`,
            ]
              .filter(Boolean)
              .join(' ')}
            style={screenStyle}
          >
            {enhanced ? (
              <>
                <div className="fw320-v2-bg" />
                <div className="fw320-v2-bloom" />
                <div className="fw320-v2-grid" />
                <div className="fw320-v2-scanlines" />
                {skin === 'v3' ? (
                  <>
                    <div className="fw320-v3-phosphor" />
                    <div className="fw320-v3-noise" />
                  </>
                ) : null}
              </>
            ) : null}
            <SideFade operation={operation} skin={skin} />

            <PixelText x={4} y={2} datum="TL" className="fw320-font2">
              {'00:05'}
            </PixelText>

            <Chip rect={CHIP_RECTS.Fine} label="BFO:0" font="f1" focused={isFocused('Fine')} editing={popupOpen && isFocused('Fine')} enabled={false} skin={skin} />
            <FavoriteChip rect={CHIP_RECTS.Favorite} favorite focused={isFocused('Favorite')} editing={popupOpen && isFocused('Favorite')} skin={skin} />
            <Chip rect={CHIP_RECTS.Avc} label="AVC:N/A" font="f1" focused={isFocused('Avc')} editing={popupOpen && isFocused('Avc')} enabled={false} skin={skin} />

            <PixelText
              x={CHIP_RECTS.Avc.x + CHIP_RECTS.Avc.w / 2}
              y={CHIP_RECTS.Avc.y + CHIP_RECTS.Avc.h + 7}
              datum="MC"
              className={enhanced ? 'fw320-font1 fw320-op-label' : 'fw320-font1'}
              color={accent}
            >
              {operation}
            </PixelText>

            <Chip rect={CHIP_RECTS.Mode} label="FM" font="f2" focused={isFocused('Mode')} editing={popupOpen && isFocused('Mode')} skin={skin} />
            <Chip rect={CHIP_RECTS.Band} label="VHF" font="f2" focused={isFocused('Band')} editing={popupOpen && isFocused('Band')} skin={skin} />
            <Chip rect={CHIP_RECTS.Step} label="10k" font="f1" focused={isFocused('Step')} editing={popupOpen && isFocused('Step')} skin={skin} />
            <Chip rect={CHIP_RECTS.Bandwidth} label="AUTO" font="f1" focused={isFocused('Bandwidth')} editing={popupOpen && isFocused('Bandwidth')} skin={skin} />
            <Chip rect={CHIP_RECTS.Agc} label="AGC" font="f1" focused={isFocused('Agc')} editing={popupOpen && isFocused('Agc')} skin={skin} />
            <Chip rect={CHIP_RECTS.Sql} label="SQL:0" font="f1" focused={isFocused('Sql')} editing={popupOpen && isFocused('Sql')} skin={skin} />
            <SysChip rect={CHIP_RECTS.Sys} batteryPct={100} wifiOn={false} sleepOn={false} focused={isFocused('Sys')} skin={skin} />
            <Chip rect={CHIP_RECTS.Settings} label="SETTINGS" font="f1" focused={isFocused('Settings')} editing={popupOpen && isFocused('Settings')} skin={skin} />

            <PixelText x={154} y={66} datum="MC" className={enhanced ? 'fw320-freq fw320-freq--v2' : 'fw320-freq'}>
              {fmtFreqFM(freqMhz)}
            </PixelText>
            <PixelText x={245} y={64} datum="ML" className={enhanced ? 'fw320-font2 fw320-unit--v2' : 'fw320-font2'}>
              {'MHz'}
            </PixelText>
            <PixelText x={282} y={64} datum="ML" className={enhanced ? 'fw320-font2 fw320-stereo--v2' : 'fw320-font2'} color={COLOR.rssi}>
              {'ST'}
            </PixelText>

            <PixelText x={160} y={100} datum="MC" className={enhanced ? 'fw320-font2 fw320-muted fw320-rds--v2' : 'fw320-font2 fw320-muted'} color={COLOR.muted}>
              {'RDS ---'}
            </PixelText>
            <PixelText x={160} y={116} datum="MC" className={enhanced ? 'fw320-font1 fw320-muted fw320-signaltext--v2' : 'fw320-font1 fw320-muted'} color={COLOR.muted}>
              {'RSSI:48 SNR:12'}
            </PixelText>

            <BottomScale freqMhz={freqMhz} operation={operation} rssiBars={8} snrBars={4} skin={skin} />

            {popupOpen && skin === 'v3' ? <QuickPopup item={focusedItem} selectedIndex={popupIndex} skin={skin} /> : null}
            {volumeHud && enhanced ? <div className="fw320-volume-dim" /> : null}
            {volumeHud ? <VolumeHud volume={34} skin={skin} /> : null}
            {enhanced ? <div className="fw320-v2-bezel" /> : null}
          </div>
        </div>
      </div>
    </div>
  )
}
