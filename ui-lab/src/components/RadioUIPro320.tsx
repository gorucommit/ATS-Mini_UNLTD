import { useMemo, useState } from 'react'
import type { ReactNode } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { Battery, Radio, Heart, Wifi, ChevronLeft } from 'lucide-react'

export const RADIO_UI_PRO_320_WIDTH = 320
export const RADIO_UI_PRO_320_HEIGHT = 170

type RadioState = {
  mode: 'FM' | 'AM'
  band: 'VHF' | 'UHF'
  freq: number
  stepKHz: number
  acc: 'AUTO' | 'MAN'
  bw: 'AUTO' | 'WIDE' | 'NAR'
  sql: number
  battery: number
  fav: boolean
  stereo: boolean
  rssi: number
  rds: string | null
}

function clamp(n: number, a: number, b: number) {
  return Math.max(a, Math.min(b, n))
}

function fmtFreq(n: number) {
  return n.toFixed(2)
}

function posOnFM(freq: number, min = 87.5, max = 108.0) {
  return clamp((freq - min) / (max - min), 0, 1)
}

function Panel({
  children,
  active,
  className,
}: {
  children: ReactNode
  active?: boolean
  className?: string
}) {
  return (
    <div
      className={[
        'border border-cyan-400/80 bg-black',
        active ? 'border-cyan-200 shadow-[0_0_8px_rgba(34,211,238,0.20)]' : '',
        className ?? '',
      ].join(' ')}
    >
      {children}
    </div>
  )
}

function DigitRoll({ value }: { value: string }) {
  return (
    <AnimatePresence mode="popLayout">
      <motion.div
        key={value}
        initial={{ y: 4, opacity: 0 }}
        animate={{ y: 0, opacity: 1 }}
        exit={{ y: -4, opacity: 0 }}
        transition={{ duration: 0.14, ease: 'easeOut' }}
        className="tabular-nums"
      >
        {value}
      </motion.div>
    </AnimatePresence>
  )
}

/** Native 320x170 UI. Render 1:1 and wrap with a scaler for desktop preview. */
export default function RadioUIPro320({
  previewScale = 3,
  showBackdrop = true,
}: {
  previewScale?: number
  showBackdrop?: boolean
}) {
  const [s, setS] = useState<RadioState>({
    mode: 'FM',
    band: 'VHF',
    freq: 93.5,
    stepKHz: 10,
    acc: 'AUTO',
    bw: 'AUTO',
    sql: 0,
    battery: 100,
    fav: true,
    stereo: true,
    rssi: 48,
    rds: null,
  })

  const bandMin = 87.5
  const bandMax = 108.0
  const marker = useMemo(() => posOnFM(s.freq, bandMin, bandMax), [s.freq, bandMin, bandMax])

  const tuneByStep = (dir: -1 | 1) => {
    const stepMHz = s.stepKHz / 1000
    const next = clamp(
      Math.round((s.freq + dir * stepMHz) * 100) / 100,
      bandMin,
      bandMax,
    )
    setS((p) => ({ ...p, freq: next }))
  }

  const blocks = useMemo(() => {
    const count = 18
    const filled = Math.round((clamp(s.rssi, 0, 100) / 100) * count)
    return { count, filled }
  }, [s.rssi])

  const scale = clamp(previewScale, 1, 6)
  const rootClassName = showBackdrop
    ? 'min-h-screen bg-neutral-950 flex items-center justify-center p-6'
    : 'inline-block'

  return (
    <div className={rootClassName}>
      <div
        style={{
          width: RADIO_UI_PRO_320_WIDTH * scale,
          height: RADIO_UI_PRO_320_HEIGHT * scale,
        }}
      >
        <div
          style={{
            width: RADIO_UI_PRO_320_WIDTH,
            height: RADIO_UI_PRO_320_HEIGHT,
            transform: `scale(${scale})`,
            transformOrigin: 'top left',
          }}
        >
          <div
            className="relative bg-black text-white select-none overflow-hidden"
            style={{ width: RADIO_UI_PRO_320_WIDTH, height: RADIO_UI_PRO_320_HEIGHT }}
          >
            <div className="absolute inset-0 border border-cyan-400/60" />

            <div className="absolute left-1 top-1 right-1 flex justify-between">
              <div className="flex flex-col gap-[2px]">
                <Panel className="w-[64px] px-1 py-[1px]">
                  <div className="text-[10px] font-bold tracking-[0.12em]">00:05</div>
                </Panel>

                <Panel className="w-[64px] px-1 py-[1px] flex items-center justify-between">
                  <div className="text-[9px] font-bold tracking-[0.14em]">FAV</div>
                  <motion.button
                    whileTap={{ scale: 0.9 }}
                    onClick={() => setS((p) => ({ ...p, fav: !p.fav }))}
                    className={s.fav ? 'text-pink-300' : 'text-cyan-200/50'}
                    aria-label="Toggle favorite"
                  >
                    <Heart size={12} fill={s.fav ? 'currentColor' : 'transparent'} />
                  </motion.button>
                </Panel>

                <Panel className="w-[64px] px-1 py-[1px]">
                  <div className="text-[9px] font-bold tracking-[0.10em]">BFO: 0</div>
                </Panel>

                <Panel className="w-[64px] px-1 py-[1px]">
                  <div className="text-[9px] font-bold tracking-[0.10em]">AVC: N/A</div>
                </Panel>

                <Panel active className="w-[64px] px-1 py-[1px]">
                  <div className="text-[9px] font-extrabold tracking-[0.18em] text-green-300">
                    TUNE
                  </div>
                </Panel>
              </div>

              <div className="flex gap-[4px] items-start">
                <motion.button
                  whileTap={{ scale: 0.96 }}
                  onClick={() =>
                    setS((p) => ({ ...p, mode: p.mode === 'FM' ? 'AM' : 'FM' }))
                  }
                  className={[
                    'w-[64px] h-[22px] border font-extrabold text-[10px] tracking-[0.18em]',
                    s.mode === 'FM'
                      ? 'border-cyan-200 text-white bg-cyan-500/10 shadow-[0_0_8px_rgba(34,211,238,0.18)]'
                      : 'border-cyan-400/70 text-cyan-100/90',
                  ].join(' ')}
                >
                  {s.mode}
                </motion.button>

                <motion.button
                  whileTap={{ scale: 0.96 }}
                  onClick={() =>
                    setS((p) => ({ ...p, band: p.band === 'VHF' ? 'UHF' : 'VHF' }))
                  }
                  className={[
                    'w-[64px] h-[22px] border font-extrabold text-[10px] tracking-[0.18em]',
                    s.band === 'VHF'
                      ? 'border-cyan-200 text-white bg-cyan-500/10 shadow-[0_0_8px_rgba(34,211,238,0.18)]'
                      : 'border-cyan-400/70 text-cyan-100/90',
                  ].join(' ')}
                >
                  {s.band}
                </motion.button>
              </div>

              <div className="flex flex-col gap-[2px] items-end">
                <div className="flex gap-[4px]">
                  <div className="grid grid-cols-2 gap-[2px]">
                    <motion.button
                      whileTap={{ scale: 0.96 }}
                      onClick={() =>
                        setS((p) => ({ ...p, stepKHz: p.stepKHz === 10 ? 5 : 10 }))
                      }
                    >
                      <Panel className="w-[74px] h-[18px] flex items-center justify-center">
                        <div className="text-[9px] font-bold">
                          <span className="text-cyan-200/90">STEP:</span> {s.stepKHz}
                        </div>
                      </Panel>
                    </motion.button>

                    <motion.button
                      whileTap={{ scale: 0.96 }}
                      onClick={() =>
                        setS((p) => ({ ...p, acc: p.acc === 'AUTO' ? 'MAN' : 'AUTO' }))
                      }
                    >
                      <Panel className="w-[74px] h-[18px] flex items-center justify-center">
                        <div className="text-[9px] font-bold">
                          <span className="text-cyan-200/90">ACC:</span> {s.acc}
                        </div>
                      </Panel>
                    </motion.button>

                    <motion.button
                      whileTap={{ scale: 0.96 }}
                      onClick={() =>
                        setS((p) => ({
                          ...p,
                          bw: p.bw === 'AUTO' ? 'WIDE' : p.bw === 'WIDE' ? 'NAR' : 'AUTO',
                        }))
                      }
                    >
                      <Panel className="w-[74px] h-[18px] flex items-center justify-center">
                        <div className="text-[9px] font-bold">
                          <span className="text-cyan-200/90">BW:</span> {s.bw}
                        </div>
                      </Panel>
                    </motion.button>

                    <Panel className="w-[74px] h-[18px] flex items-center justify-center gap-1">
                      <div className="text-[9px] font-bold">
                        <span className="text-cyan-200/90">SQL:</span> {s.sql}
                      </div>
                    </Panel>
                  </div>

                  <div className="flex flex-col gap-[2px]">
                    <Panel className="w-[52px] h-[18px] flex items-center justify-center">
                      <div className="bg-green-400 text-black font-extrabold text-[10px] px-1">
                        {s.battery}
                      </div>
                    </Panel>

                    <Panel className="w-[52px] h-[18px] flex items-center justify-center gap-[2px] text-cyan-200/90">
                      <ChevronLeft size={12} className="opacity-70" />
                      <Battery size={12} className="opacity-90" />
                      <Radio size={12} className="opacity-90" />
                      <Wifi size={12} className="opacity-60" />
                    </Panel>
                  </div>
                </div>

                <motion.button
                  whileTap={{ scale: 0.98 }}
                  onClick={() => setS((p) => ({ ...p, rssi: clamp(p.rssi + 10, 0, 100) }))}
                  className="w-[160px] h-[16px] border border-cyan-400/80 text-[9px] font-extrabold tracking-[0.22em]"
                >
                  SETTINGS
                </motion.button>
              </div>
            </div>

            <div className="absolute left-0 right-0 top-[54px] flex flex-col items-center">
              <div className="flex items-end gap-2">
                <div
                  className="text-[44px] leading-none font-extrabold tracking-[0.02em] tabular-nums"
                  style={{
                    textShadow:
                      '0 0 10px rgba(255,255,255,0.10), 0 0 6px rgba(34,211,238,0.10)',
                  }}
                >
                  <DigitRoll value={fmtFreq(s.freq)} />
                </div>

                <div className="pb-1 flex flex-col items-start gap-1">
                  <div className="text-[12px] font-extrabold tracking-[0.18em] text-cyan-200/90">
                    MHz
                  </div>
                  <Panel active={s.stereo} className="px-1 py-[1px]">
                    <div
                      className={
                        s.stereo
                          ? 'text-[9px] font-extrabold tracking-[0.20em] text-green-300'
                          : 'text-[9px] font-extrabold tracking-[0.20em] text-cyan-200/60'
                      }
                    >
                      ST
                    </div>
                  </Panel>
                </div>
              </div>

              <div className="mt-[2px] text-[10px] font-bold tracking-[0.18em] text-cyan-100/80">
                RDS {s.rds ?? '---'}
              </div>
              <div className="text-[10px] font-bold tracking-[0.18em] text-cyan-100/80">
                RSSI: {Math.round(s.rssi)}
              </div>
            </div>

            <div className="absolute left-2 right-2 bottom-2">
              <div className="flex justify-between text-[9px] font-bold tracking-[0.18em] text-cyan-100/70">
                <span>87.5</span>
                <span>108.0</span>
              </div>

              <div className="relative mt-[3px] border-t border-cyan-400/50">
                {Array.from({ length: 21 }).map((_, i) => {
                  const major = i % 2 === 0
                  return (
                    <div key={i} className="absolute top-0" style={{ left: `${(i / 20) * 100}%` }}>
                      <div
                        className={
                          major ? 'h-[8px] w-px bg-cyan-400/45' : 'h-[5px] w-px bg-cyan-400/30'
                        }
                      />
                    </div>
                  )
                })}

                <motion.div
                  className="absolute -top-[10px]"
                  animate={{ left: `${marker * 100}%` }}
                  transition={{ type: 'spring', stiffness: 450, damping: 32 }}
                  style={{ transform: 'translateX(-50%)' }}
                >
                  <div className="w-0 h-0 border-l-[5px] border-r-[5px] border-b-[8px] border-l-transparent border-r-transparent border-b-green-400" />
                </motion.div>

                <div className="mt-[12px] flex justify-center gap-[2px]">
                  {Array.from({ length: blocks.count }).map((_, i) => {
                    const on = i < blocks.filled
                    return (
                      <div
                        key={i}
                        className={[
                          'w-[6px] h-[6px] rounded-[1px]',
                          on
                            ? 'bg-green-400/90 shadow-[0_0_6px_rgba(34,197,94,0.18)]'
                            : 'bg-cyan-900/35 border border-cyan-400/10',
                        ].join(' ')}
                      />
                    )
                  })}
                </div>

                <div className="mt-[4px] flex justify-center gap-2">
                  <motion.button
                    whileTap={{ scale: 0.95 }}
                    onClick={() => tuneByStep(-1)}
                    className="border border-cyan-400/60 text-[9px] font-extrabold px-2 py-[1px] tracking-[0.18em]"
                  >
                    -
                  </motion.button>
                  <motion.button
                    whileTap={{ scale: 0.95 }}
                    onClick={() => tuneByStep(1)}
                    className="border border-cyan-400/60 text-[9px] font-extrabold px-2 py-[1px] tracking-[0.18em]"
                  >
                    +
                  </motion.button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}
