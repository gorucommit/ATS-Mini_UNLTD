import type { Meta, StoryObj } from '@storybook/react-vite'
import RadioUIPro320, {
  RADIO_UI_PRO_320_HEIGHT,
  RADIO_UI_PRO_320_WIDTH,
} from '../components/RadioUIPro320'

const meta = {
  title: 'Pasted Designs/RadioUIPro320',
  component: RadioUIPro320,
  parameters: {
    layout: 'centered',
    docs: {
      description: {
        component:
          'Pasted interactive design component provided by user. Native screen size is 320x170 px.',
      },
    },
  },
  args: {
    previewScale: 1,
    showBackdrop: false,
  },
  render: (args) => (
    <div
      style={{
        padding: 24,
        background: '#0b0f14',
        borderRadius: 12,
        border: '1px solid rgba(103,232,249,0.14)',
        width: RADIO_UI_PRO_320_WIDTH + 48,
        height: RADIO_UI_PRO_320_HEIGHT + 48,
        display: 'grid',
        placeItems: 'center',
      }}
    >
      <RadioUIPro320 {...args} />
    </div>
  ),
} satisfies Meta<typeof RadioUIPro320>

export default meta

type Story = StoryObj<typeof meta>

export const Default: Story = {}

export const ScaledPreview: Story = {
  args: {
    previewScale: 3,
    showBackdrop: true,
  },
  parameters: {
    layout: 'fullscreen',
  },
}
