import type { Meta, StoryObj } from '@storybook/react-vite'
import { DemoScene, demoScenes, type DemoSceneKey } from '../radio/demoScenes'

type SceneStoryArgs = {
  scene: DemoSceneKey
}

const meta = {
  title: 'ATS Mini/Radio UI',
  component: DemoScene,
  parameters: {
    layout: 'centered',
    docs: {
      description: {
        component:
          'Storybook playground for the ATS Mini firmware UI states (TUNE/SEEK/SCAN, Quick Edit ring, Dial Pad, Volume HUD).',
      },
    },
  },
  argTypes: {
    scene: {
      control: 'select',
      options: demoScenes.map((scene) => scene.key),
    },
  },
  args: {
    scene: 'tuneIdle',
  },
  render: (args) => <DemoScene scene={args.scene} />,
} satisfies Meta<SceneStoryArgs>

export default meta
type Story = StoryObj<typeof meta>

export const Playground: Story = {}

export const TuneIdle: Story = {
  args: { scene: 'tuneIdle' },
}

export const SeekActive: Story = {
  args: { scene: 'seekActive' },
}

export const ScanList: Story = {
  args: { scene: 'scanList' },
}

export const QuickEditBrowse: Story = {
  args: { scene: 'quickEditBrowse' },
}

export const QuickEditEdit: Story = {
  args: { scene: 'quickEditEdit' },
}

export const DialPad: Story = {
  args: { scene: 'dialPad' },
}

export const VolumeHud: Story = {
  args: { scene: 'volumeHud' },
}

export const FavoritesMenu: Story = {
  args: { scene: 'favoritesMenu' },
}
