import type { Meta, StoryObj } from '@storybook/react-vite'
import FirmwareNowPlaying320, {
  FIRMWARE_UI_HEIGHT,
  FIRMWARE_UI_WIDTH,
} from '../components/FirmwareNowPlaying320'

const meta = {
  title: 'Actual UI/Firmware Now Playing 320x170',
  component: FirmwareNowPlaying320,
  parameters: {
    layout: 'centered',
    docs: {
      description: {
        component:
          'Coordinate-accurate Storybook copy of the firmware Now Playing screen based on `src/services/ui_service.cpp` and `include/quick_edit_model.h` (320x170 native layout).',
      },
    },
  },
  args: {
    previewScale: 1,
    showBackdrop: false,
    skin: 'baseline',
    operation: 'TUNE',
    freqMhz: 93.5,
    volumeHud: false,
    quickEdit: true,
    editing: false,
    focusedItem: 'Mode',
  },
  render: (args) => (
    <div
      style={{
        padding: 24,
        background: '#07090c',
        borderRadius: 12,
        border: '1px solid rgba(255,255,255,0.08)',
        width: FIRMWARE_UI_WIDTH + 48,
        height: FIRMWARE_UI_HEIGHT + 48,
        display: 'grid',
        placeItems: 'center',
      }}
    >
      <FirmwareNowPlaying320 {...args} />
    </div>
  ),
} satisfies Meta<typeof FirmwareNowPlaying320>

export default meta
type Story = StoryObj<typeof meta>

export const Native320x170: Story = {}

export const Native320x170V2: Story = {
  args: {
    skin: 'v2',
  },
}

export const Native320x170V3: Story = {
  args: {
    skin: 'v3',
  },
}

export const VolumeHudOverlay: Story = {
  args: {
    volumeHud: true,
  },
}

export const VolumeHudOverlayV2: Story = {
  args: {
    skin: 'v2',
    volumeHud: true,
  },
}

export const VolumeHudOverlayV3: Story = {
  args: {
    skin: 'v3',
    volumeHud: true,
  },
}

export const ScaledPreview: Story = {
  args: {
    previewScale: 3,
    showBackdrop: true,
  },
  parameters: {
    layout: 'fullscreen',
  },
}

export const ScaledPreviewV2: Story = {
  args: {
    skin: 'v2',
    previewScale: 3,
    showBackdrop: true,
  },
  parameters: {
    layout: 'fullscreen',
  },
}

export const ScaledPreviewV3: Story = {
  args: {
    skin: 'v3',
    previewScale: 3,
    showBackdrop: true,
  },
  parameters: {
    layout: 'fullscreen',
  },
}

export const SeekAccent: Story = {
  args: {
    operation: 'SEEK',
    focusedItem: 'Step',
    freqMhz: 101.7,
  },
}

export const SeekAccentV2: Story = {
  args: {
    skin: 'v2',
    operation: 'SEEK',
    focusedItem: 'Step',
    freqMhz: 101.7,
  },
}

export const SeekAccentV3: Story = {
  args: {
    skin: 'v3',
    operation: 'SEEK',
    focusedItem: 'Step',
    freqMhz: 101.7,
  },
}

export const ScanEditingV2: Story = {
  args: {
    skin: 'v2',
    operation: 'SCAN',
    focusedItem: 'Bandwidth',
    editing: true,
    freqMhz: 99.9,
  },
}

export const ScanEditingV3: Story = {
  args: {
    skin: 'v3',
    operation: 'SCAN',
    focusedItem: 'Bandwidth',
    editing: true,
    popupIndex: 1,
    freqMhz: 99.9,
  },
}

export const FrequencyClearance30000kHzV3: Story = {
  args: {
    skin: 'v3',
    displayFreqText: '30000',
    displayUnitText: 'kHz',
    displayStereoText: 'MONO',
    freqMhz: 99.9,
  },
}

export const FrequencyClearance1078MHzV3: Story = {
  args: {
    skin: 'v3',
    displayFreqText: '107.8',
    displayUnitText: 'MHz',
    displayStereoText: 'STEREO',
    freqMhz: 107.8,
  },
}
