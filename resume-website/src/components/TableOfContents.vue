<template>
  <nav class="toc-container">
    <!-- 桌面端悬浮目录 -->
    <div class="toc-sidebar desktop-nav">
      <ul class="toc-list">
        <li class="toc-item">
          <a 
            href="#about" 
            class="toc-link"
            :class="{ active: activeSection === 'about' }"
            @click="scrollToSection('about')"
          >
            <span class="toc-icon">👤</span>
            <span class="toc-text">关于我</span>
          </a>
        </li>
        <li class="toc-item">
          <a 
            href="#experience" 
            class="toc-link"
            :class="{ active: activeSection === 'experience' }"
            @click="scrollToSection('experience')"
          >
            <span class="toc-icon">💼</span>
            <span class="toc-text">工作经历</span>
          </a>
        </li>
        <li class="toc-item">
          <a 
            href="#projects" 
            class="toc-link"
            :class="{ active: activeSection === 'projects' }"
            @click="scrollToSection('projects')"
          >
            <span class="toc-icon">🚀</span>
            <span class="toc-text">项目经验</span>
          </a>
        </li>
        <li class="toc-item">
          <a 
            href="#skills" 
            class="toc-link"
            :class="{ active: activeSection === 'skills' }"
            @click="scrollToSection('skills')"
          >
            <span class="toc-icon">⚡</span>
            <span class="toc-text">技能特长</span>
          </a>
        </li>
        <li class="toc-item">
          <a 
            href="#open-source" 
            class="toc-link"
            :class="{ active: activeSection === 'open-source' }"
            @click="scrollToSection('open-source')"
          >
            <span class="toc-icon">🚀</span>
            <span class="toc-text">开源项目</span>
          </a>
        </li>
        <li class="toc-item">
          <a 
            href="#ai-application" 
            class="toc-link"
            :class="{ active: activeSection === 'ai-application' }"
            @click="scrollToSection('ai-application')"
          >
            <span class="toc-icon">🤖</span>
            <span class="toc-text">AI技术应用</span>
          </a>
        </li>
      </ul>
    </div>

    <!-- 移动端目录切换按钮 -->
    <button 
      class="toc-mobile-toggle" 
      @click="toggleMobileNav"
      :class="{ active: showMobileNav }"
    >
      ☰
    </button>

    <!-- 移动端目录菜单 -->
    <div class="toc-mobile" :class="{ active: showMobileNav }" @click="closeMobileNav($event)">
      <div class="toc-mobile-content" @click.stop>
        <button class="toc-close" @click="closeMobileNav">✕</button>
        <ul class="toc-mobile-list">
          <li class="toc-mobile-item">
            <a 
              href="#about" 
              class="toc-mobile-link"
              :class="{ active: activeSection === 'about' }"
              @click="scrollToSection('about')"
            >
              <span class="toc-icon">👤</span>
              <span>关于我</span>
            </a>
          </li>
          <li class="toc-mobile-item">
            <a 
              href="#experience" 
              class="toc-mobile-link"
              :class="{ active: activeSection === 'experience' }"
              @click="scrollToSection('experience')"
            >
              <span class="toc-icon">💼</span>
              <span>工作经历</span>
            </a>
          </li>
          <li class="toc-mobile-item">
            <a 
              href="#projects" 
              class="toc-mobile-link"
              :class="{ active: activeSection === 'projects' }"
              @click="scrollToSection('projects')"
            >
              <span class="toc-icon">🚀</span>
              <span>项目经验</span>
            </a>
          </li>
          <li class="toc-mobile-item">
            <a 
              href="#skills" 
              class="toc-mobile-link"
              :class="{ active: activeSection === 'skills' }"
              @click="scrollToSection('skills')"
            >
              <span class="toc-icon">⚡</span>
              <span>技能特长</span>
            </a>
          </li>
          <li class="toc-mobile-item">
            <a 
              href="#open-source" 
              class="toc-mobile-link"
              :class="{ active: activeSection === 'open-source' }"
              @click="scrollToSection('open-source')"
            >
              <span class="toc-icon">🚀</span>
              <span>开源项目</span>
            </a>
          </li>
          <li class="toc-mobile-item">
            <a 
              href="#ai-application" 
              class="toc-mobile-link"
              :class="{ active: activeSection === 'ai-application' }"
              @click="scrollToSection('ai-application')"
            >
              <span class="toc-icon">🤖</span>
              <span>AI技术应用</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'TableOfContents',
  data() {
    return {
      activeSection: 'about',
      showMobileNav: false,
      observer: null
    }
  },
  mounted() {
    this.initScrollObserver()
    this.updateActiveSection()
  },
  beforeUnmount() {
    if (this.observer) {
      this.observer.disconnect()
    }
  },
  methods: {
    initScrollObserver() {
      const options = {
        root: null,
        rootMargin: '-10% 0px -70% 0px',
        threshold: 0.1
      }

      this.observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            this.activeSection = entry.target.id
          }
        })
      }, options)

      // 观察所有section
      const sections = document.querySelectorAll('section[id]')
      sections.forEach(section => {
        this.observer.observe(section)
      })
    },
    
    updateActiveSection() {
      const sections = document.querySelectorAll('section[id]')
      const scrollY = window.pageYOffset
      const windowHeight = window.innerHeight
      
      sections.forEach(section => {
        const rect = section.getBoundingClientRect()
        const sectionTop = scrollY + rect.top - 100
        
        if (scrollY >= sectionTop - windowHeight / 3) {
          this.activeSection = section.id
        }
      })
    },

    scrollToSection(sectionId) {
      const element = document.getElementById(sectionId)
      if (element) {
        const offsetTop = element.offsetTop - 20
        window.scrollTo({
          top: offsetTop,
          behavior: 'smooth'
        })
      }
      this.showMobileNav = false
    },

    toggleMobileNav() {
      this.showMobileNav = !this.showMobileNav
    },

    closeMobileNav(event) {
      if (!event || event.target === event.currentTarget) {
        this.showMobileNav = false
      }
    }
  }
}
</script>

<style scoped>
.toc-container {
  position: relative;
}

.toc-sidebar {
  position: fixed;
  left: 2rem;
  top: 50%;
  transform: translateY(-50%);
  z-index: 100;
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(10px);
  border-radius: 12px;
  padding: 1rem 0.5rem;
  box-shadow: var(--shadow-lg);
  border: 1px solid var(--border-color);
}

.toc-list {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  gap: 0.25rem;
}

.toc-item {
  width: 100%;
}

.toc-link {
  display: flex;
  align-items: center;
  padding: 0.75rem;
  color: var(--text-secondary);
  text-decoration: none;
  border-radius: 8px;
  font-size: 0.875rem;
  font-weight: 500;
  transition: all 0.3s ease;
  cursor: pointer;
  position: relative;
  width: 100%;
}

.toc-link:hover {
  color: var(--primary-color);
  background: rgba(37, 99, 235, 0.1);
  transform: translateX(4px);
}

.toc-link.active {
  color: var(--primary-color);
  background: rgba(37, 99, 235, 0.15);
}

.toc-link.active::after {
  content: '';
  position: absolute;
  right: -0.5rem;
  top: 50%;
  transform: translateY(-50%);
  width: 3px;
  height: 20px;
  background: var(--primary-color);
  border-radius: 2px;
}

.toc-icon {
  font-size: 1rem;
  margin-right: 0.75rem;
  flex-shrink: 0;
}

.toc-text {
  white-space: nowrap;
}

/* 移动端样式 */
.toc-mobile-toggle {
  display: none;
  position: fixed;
  top: 1rem;
  right: 1rem;
  z-index: 101;
  background: var(--primary-color);
  color: white;
  border: none;
  border-radius: 50%;
  width: 48px;
  height: 48px;
  font-size: 1.25rem;
  cursor: pointer;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.toc-mobile-toggle:hover {
  transform: scale(1.1);
  box-shadow: var(--shadow-lg);
}

.toc-mobile {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 99;
  background: rgba(0, 0, 0, 0.5);
  backdrop-filter: blur(5px);
}

.toc-mobile.active {
  display: block;
}

.toc-mobile-content {
  position: absolute;
  top: 0;
  right: 0;
  width: 280px;
  height: 100%;
  background: white;
  padding: 2rem 1rem;
  box-shadow: var(--shadow-lg);
  overflow-y: auto;
}

.toc-mobile-list {
  list-style: none;
  margin: 0;
  padding: 0;
}

.toc-mobile-item {
  margin-bottom: 0.5rem;
}

.toc-mobile-link {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  padding: 0.75rem 1rem;
  color: var(--text-primary);
  text-decoration: none;
  border-radius: 8px;
  font-weight: 500;
  transition: all 0.3s ease;
  cursor: pointer;
}

.toc-mobile-link:hover {
  background: var(--bg-secondary);
}

.toc-mobile-link.active {
  background: rgba(37, 99, 235, 0.1);
  color: var(--primary-color);
}

.toc-close {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: none;
  border: none;
  font-size: 1.5rem;
  color: var(--text-secondary);
  cursor: pointer;
  padding: 0.5rem;
}

@media (max-width: 768px) {
  .toc-sidebar {
    display: none;
  }
  
  .toc-mobile-toggle {
    display: block;
  }
}

@media (max-width: 480px) {
  .toc-sidebar {
    left: 1rem;
    padding: 0.75rem 0.25rem;
  }
  
  .toc-link {
    padding: 0.5rem;
  }
  
  .toc-icon {
    margin-right: 0.5rem;
    font-size: 0.875rem;
  }
}

/* Section滚动定位 */
section[id] {
  scroll-margin-top: 20px;
}
</style>