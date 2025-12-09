<template>
  <div id="app">
    <div class="resume-container">
      <Header />
      <TableOfContents />
      <section id="about">
        <About />
      </section>
      <section id="experience">
        <Experience />
      </section>
      <section id="projects">
        <Projects />
      </section>
      <section id="skills">
        <Skills />
      </section>
      <section id="open-source">
        <OpenSource />
      </section>
      <section id="ai-application">
        <AIApplication />
      </section>
    </div>
  </div>
</template>

<script>
import Header from './components/Header.vue'
import About from './components/About.vue'
import Experience from './components/Experience.vue'
import Projects from './components/Projects.vue'
import Skills from './components/Skills.vue'
import OpenSource from './components/OpenSource.vue'
import AIApplication from './components/AIApplication.vue'
import TableOfContents from './components/TableOfContents.vue'

export default {
  name: 'App',
  components: {
    Header,
    About,
    Experience,
    Projects,
    Skills,
    OpenSource,
    AIApplication,
    TableOfContents
  }
}
</script>

<style scoped>
.resume-container {
  background: var(--bg-primary);
  box-shadow: var(--shadow-lg);
  margin: 2rem auto;
  max-width: 1200px;
  min-height: calc(100vh - 4rem);
  border-radius: 12px;
  overflow: hidden;
  position: relative;
}

/* 为左侧目录留出空间 */
.resume-container::before {
  content: '';
  position: fixed;
  left: 0;
  top: 0;
  width: 140px;
  height: 100%;
  background: transparent;
  z-index: 50;
}

@media (max-width: 768px) {
  .resume-container {
    margin: 1rem;
    border-radius: 8px;
  }
  
  .resume-container::before {
    display: none;
  }
}

@media (max-width: 480px) {
  .resume-container {
    margin: 0.5rem;
    border-radius: 4px;
  }
}
</style>