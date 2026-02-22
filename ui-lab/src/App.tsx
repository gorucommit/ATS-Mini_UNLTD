import { useState } from 'react'
import './App.css'
import { DemoScene, demoScenes, type DemoSceneKey } from './radio/demoScenes'

function App() {
  const [scene, setScene] = useState<DemoSceneKey>('tuneIdle')

  return (
    <main className="lab-app">
      <header className="lab-app__header">
        <div>
          <p className="lab-app__eyebrow">ATS MINI</p>
          <h1 className="lab-app__title">Storybook UI Lab</h1>
          <p className="lab-app__subtitle">
            Mock screens based on the firmware interaction spec. Use Storybook for isolated states,
            or switch scenes here for quick iteration.
          </p>
        </div>
        <code className="lab-app__hint">npm run storybook</code>
      </header>

      <nav className="scene-picker" aria-label="UI scene presets">
        {demoScenes.map((item) => (
          <button
            key={item.key}
            type="button"
            className={scene === item.key ? 'is-active' : undefined}
            onClick={() => setScene(item.key)}
            title={item.description}
          >
            {item.label}
          </button>
        ))}
      </nav>

      <section className="scene-preview">
        <DemoScene scene={scene} />
      </section>
    </main>
  )
}

export default App
