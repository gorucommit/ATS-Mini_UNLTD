import {
  DialPadOverlay,
  MenuOverlay,
  NowPlayingScreen,
  type ChipItem,
  QuickEditWheel,
  RadioFrame,
  VolumeHudOverlay,
} from './RadioUi'

export type DemoSceneKey =
  | 'tuneIdle'
  | 'seekActive'
  | 'scanList'
  | 'quickEditBrowse'
  | 'quickEditEdit'
  | 'dialPad'
  | 'volumeHud'
  | 'favoritesMenu'

export interface DemoSceneDefinition {
  key: DemoSceneKey
  label: string
  description: string
}

const baseChips: ChipItem[] = [
  { label: 'BAND', value: 'FM' },
  { label: 'STEP', value: '100k' },
  { label: 'BW', value: 'WIDE' },
  { label: 'SQL', value: '03' },
  { label: 'FAV', value: '12' },
]

const tuneChips: ChipItem[] = [
  { label: 'BAND', value: 'FM', focused: true },
  { label: 'STEP', value: '100k' },
  { label: 'BW', value: 'WIDE' },
  { label: 'MODE', value: 'STEREO' },
  { label: 'SYS', value: 'SLEEP' },
]

const seekChips: ChipItem[] = [
  { label: 'BAND', value: 'FM' },
  { label: 'STEP', value: 'AUTO' },
  { label: 'SQL', value: '02' },
  { label: 'MODE', value: 'SEEK', focused: true },
  { label: 'FAV', value: '12' },
]

const scanChips: ChipItem[] = [
  { label: 'BAND', value: 'FM' },
  { label: 'STEP', value: 'SCAN' },
  { label: 'LIST', value: '08', focused: true },
  { label: 'SAVE', value: 'HOLD' },
  { label: 'SYS', value: 'BLE' },
]

const quickEditRing: ChipItem[] = [
  { label: 'BAND', value: 'FM' },
  { label: 'STEP', value: '100k' },
  { label: 'BW', value: 'WIDE' },
  { label: 'AGC/ATT', value: 'AUTO' },
  { label: 'SQL', value: '03' },
  { label: 'SYS', value: 'Wi-Fi' },
  { label: 'SETTINGS' },
  { label: 'FAV', value: 'Recall' },
  { label: 'FINETUNE', value: '0' },
  { label: 'MODE', value: 'FM', focused: true },
]

const quickEditRingEditing: ChipItem[] = quickEditRing.map((chip) =>
  chip.label === 'STEP'
    ? { ...chip, focused: true, editing: true, value: '50k' }
    : chip.label === 'MODE'
      ? { ...chip, focused: false }
      : chip,
)

export const demoScenes: DemoSceneDefinition[] = [
  {
    key: 'tuneIdle',
    label: 'Tune Idle',
    description: 'Base now-playing screen with quick chips and hold thresholds visible.',
  },
  {
    key: 'seekActive',
    label: 'Seek Active',
    description: 'Active seek state where rotate/click cancels.',
  },
  {
    key: 'scanList',
    label: 'Scan List',
    description: 'Scan idle view with found station list navigation.',
  },
  {
    key: 'quickEditBrowse',
    label: 'Quick Edit Browse',
    description: 'Quick selection ring in browse mode.',
  },
  {
    key: 'quickEditEdit',
    label: 'Quick Edit Edit',
    description: 'Quick selection ring with one chip in edit mode.',
  },
  {
    key: 'dialPad',
    label: 'Dial Pad',
    description: 'Frequency entry overlay from long press.',
  },
  {
    key: 'volumeHud',
    label: 'Volume HUD',
    description: 'Press+rotate transient volume overlay.',
  },
  {
    key: 'favoritesMenu',
    label: 'Favorites Actions',
    description: 'FAV actions layer inside quick edit.',
  },
]

export function DemoScene({ scene }: { scene: DemoSceneKey }) {
  switch (scene) {
    case 'tuneIdle':
      return (
        <RadioFrame mode="TUNE">
          <NowPlayingScreen
            mode="TUNE"
            frequency="99.5"
            station="KEXP / Seattle"
            band="FM"
            modulation="Stereo"
            step="100 kHz"
            signalBars={4}
            rssi={-61}
            snr={34}
            statusText="Click: Quick Selection / Long: Dial Pad / Longer: Mute"
            chips={tuneChips}
            holdProgress={0.18}
            holdStage="click"
          />
        </RadioFrame>
      )

    case 'seekActive':
      return (
        <RadioFrame mode="SEEK">
          <NowPlayingScreen
            mode="SEEK"
            activity="active"
            frequency="101.7"
            station="Locking next station..."
            band="FM"
            modulation="Stereo"
            step="Auto"
            signalBars={2}
            rssi={-78}
            snr={18}
            statusText="SEEK ACTIVE: click or rotate cancels and returns to idle."
            chips={seekChips}
            holdProgress={0.08}
            holdStage="click"
          />
        </RadioFrame>
      )

    case 'scanList':
      return (
        <RadioFrame mode="SCAN">
          <NowPlayingScreen
            mode="SCAN"
            frequency="88.1"
            station="Found station list"
            band="FM"
            modulation="Stereo"
            step="Scan"
            signalBars={3}
            rssi={-70}
            snr={26}
            statusText="Rotate: move list / Click: tune selected / Long: rescan"
            chips={scanChips}
            holdProgress={0.22}
            holdStage="click"
            scanStations={[
              { frequency: '88.1', label: 'NPR', strength: 5 },
              { frequency: '90.3', label: 'Jazz 24', strength: 4, current: true },
              { frequency: '94.9', label: 'The Mountain', strength: 3 },
              { frequency: '99.5', label: 'KEXP', strength: 5 },
            ]}
          />
        </RadioFrame>
      )

    case 'quickEditBrowse':
      return (
        <RadioFrame mode="TUNE">
          <NowPlayingScreen
            mode="TUNE"
            frequency="7.230"
            station="HAM / 40m voice"
            band="SW"
            modulation="LSB"
            step="10 Hz"
            signalBars={3}
            rssi={-81}
            snr={14}
            statusText="Quick Edit browse: rotate ring, click to activate chip."
            chips={[...baseChips.slice(0, 4), { label: 'MODE', value: 'LSB', focused: true }]}
            holdProgress={0.11}
            holdStage="click"
          />
          <QuickEditWheel
            chips={quickEditRing}
            parentMode="TUNE"
            state="browse"
            helperText="Ring order follows the UI spec. Focus highlight remains visible while browsing."
          />
        </RadioFrame>
      )

    case 'quickEditEdit':
      return (
        <RadioFrame mode="TUNE">
          <NowPlayingScreen
            mode="TUNE"
            frequency="14.2300"
            station="USB monitoring"
            band="SW"
            modulation="USB"
            step="50 Hz"
            signalBars={4}
            rssi={-67}
            snr={22}
            statusText="Quick Edit edit state: rotate changes value, click commits."
            chips={[
              { label: 'BAND', value: 'SW' },
              { label: 'STEP', value: '50 Hz', editing: true },
              { label: 'BW', value: '2.7 k' },
              { label: 'MODE', value: 'USB', focused: true },
              { label: 'SQL', value: '02' },
            ]}
            holdProgress={0.44}
            holdStage="long"
          />
          <QuickEditWheel
            chips={quickEditRingEditing}
            parentMode="TUNE"
            state="edit"
            helperText="Editing STEP. Click commits and returns to browse. Long press backs out to parent mode."
          />
        </RadioFrame>
      )

    case 'dialPad':
      return (
        <RadioFrame mode="TUNE">
          <NowPlayingScreen
            mode="TUNE"
            frequency="100.7"
            station="Direct entry pending"
            band="FM"
            modulation="Stereo"
            step="100 kHz"
            signalBars={4}
            rssi={-63}
            snr={32}
            statusText="Dial pad opened via long press. Confirm applies frequency."
            chips={tuneChips}
            holdProgress={0.58}
            holdStage="long"
          />
          <DialPadOverlay buffer="101.900" selectedKey="9" />
        </RadioFrame>
      )

    case 'volumeHud':
      return (
        <RadioFrame mode="SEEK">
          <NowPlayingScreen
            mode="SEEK"
            frequency="96.1"
            station="Volume adjust while tuned"
            band="FM"
            modulation="Stereo"
            step="Auto"
            signalBars={5}
            rssi={-58}
            snr={36}
            statusText="Press+Rotate takes precedence for volume adjustment."
            chips={[
              { label: 'VOL', value: '72', focused: true },
              { label: 'BAND', value: 'FM' },
              { label: 'STEP', value: 'AUTO' },
              { label: 'MODE', value: 'SEEK' },
              { label: 'SYS', value: 'SLEEP' },
            ]}
            holdProgress={0.16}
            holdStage="click"
          />
          <VolumeHudOverlay level={72} delta={+4} />
        </RadioFrame>
      )

    case 'favoritesMenu':
      return (
        <RadioFrame mode="SCAN">
          <NowPlayingScreen
            mode="SCAN"
            frequency="90.3"
            station="Jazz 24"
            band="FM"
            modulation="Stereo"
            step="Scan"
            signalBars={4}
            rssi={-64}
            snr={30}
            statusText="FAV ACTIONS: Save Current / Recall"
            chips={[
              { label: 'BAND', value: 'FM' },
              { label: 'STEP', value: 'SCAN' },
              { label: 'FAV', value: 'Recall', focused: true },
              { label: 'SYS', value: 'BLE' },
              { label: 'SQL', value: '02' },
            ]}
            holdProgress={0.09}
            holdStage="click"
          />
          <MenuOverlay
            title="Fav Actions"
            items={['Save Current', 'Recall']}
            selectedIndex={1}
            helperText="Rotate moves action focus. Click opens Favorites List. Long press returns to Quick Edit."
          />
        </RadioFrame>
      )
  }
}
