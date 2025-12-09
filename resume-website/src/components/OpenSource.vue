<template>
  <section class="open-source">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">
          <span class="title-icon">🚀</span>
          开源项目
        </h2>
        <div class="section-line"></div>
      </div>
      
      <div class="projects-grid">
        <div class="project-card" v-for="(project, index) in projects" :key="index">
          <div class="card-header">
            <div class="project-info">
              <h3 class="project-name">
                <span class="project-icon">{{ project.icon }}</span>
                {{ project.name }}
              </h3>
              <p class="project-description">{{ project.description }}</p>
            </div>
            <div class="project-links">
              <a 
                :href="project.githubUrl" 
                target="_blank" 
                class="github-link"
                title="GitHub"
              >
                <svg class="github-icon" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                </svg>
              </a>
            </div>
          </div>
          
          <div class="project-features">
            <h4 class="features-title">
              <span class="features-icon">⚡</span>
              核心特性
            </h4>
            <ul class="features-list">
              <li v-for="feature in project.features" :key="feature" class="feature-item">
                <span class="feature-bullet">•</span>
                {{ feature }}
              </li>
            </ul>
          </div>
          
          <div class="project-tech">
            <h4 class="tech-title">
              <span class="tech-icon">🛠️</span>
              技术栈
            </h4>
            <div class="tech-tags">
              <span class="tech-tag" v-for="tech in project.techStack" :key="tech">{{ tech }}</span>
            </div>
          </div>
          
          <div class="project-stats">
            <div class="stat-item" v-for="stat in project.stats" :key="stat.label">
              <span class="stat-number">{{ stat.value }}</span>
              <span class="stat-label">{{ stat.label }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'OpenSource',
  data() {
    return {
      projects: [
        {
          name: 'brick-bootkit-springboot',
          description: '基于 Spring Boot 的快速开发工具包，提供完整的项目脚手架和常用组件集成',
          icon: '🧱',
          githubUrl: 'https://github.com/v18268185209/brick-bootkit-springboot',
          features: [
            '开箱即用的 Spring Boot 项目模板',
            '集成常用中间件和工具类',
            '提供完整的开发规范和最佳实践',
            '支持快速项目搭建和部署',
            '包含完整的日志、监控、测试框架'
          ],
          techStack: ['Spring Boot', 'MyBatis Plus', 'Redis', 'MySQL', 'Docker', 'Maven'],
          stats: [
            { label: '组件数量', value: '20+' },
            { label: '支持版本', value: 'SpringBoot 2.x/3.x' },
            { label: '项目类型', value: '脚手架工具' }
          ]
        },
        {
          name: 'yuqueDocumentDoloader',
          description: '基于 Spring Boot 的语雀文档批量下载工具，支持导出文档为多种格式，便于知识管理和离线查看',
          icon: '📚',
          githubUrl: 'https://github.com/v18268185209/yuqueDocumentDoloader',
          features: [
            '基于 Spring Boot 的企业级应用架构',
            '支持语雀文档批量下载和同步',
            '多种导出格式（Markdown、HTML、PDF）',
            'RESTful API 接口，支持第三方集成',
            'Web 管理界面，操作简单直观',
            '支持增量更新和文档版本管理'
          ],
          techStack: ['Spring Boot', 'Spring MVC', 'Spring Data JPA', 'MySQL', 'Redis', 'Maven'],
          stats: [
            { label: '架构模式', value: 'Spring Boot' },
            { label: '支持格式', value: 'MD/HTML/PDF' },
            { label: '部署方式', value: 'JAR包/Docker' }
          ]
        }
      ]
    }
  }
}
</script>

<style scoped>
.open-source {
  padding: 4rem 0;
  background: var(--bg-secondary);
}

.section-header {
  text-align: center;
  margin-bottom: 3rem;
}

.section-title {
  font-size: 2.5rem;
  font-weight: 700;
  color: var(--text-primary);
  margin-bottom: 1rem;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
}

.title-icon {
  font-size: 2.5rem;
}

.section-line {
  width: 80px;
  height: 4px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  margin: 0 auto;
  border-radius: 2px;
}

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
  gap: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

.project-card {
  background: white;
  border-radius: 16px;
  padding: 2rem;
  box-shadow: var(--shadow);
  border: 1px solid var(--border-color);
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.project-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
}

.project-card:hover {
  transform: translateY(-6px);
  box-shadow: var(--shadow-lg);
}

.card-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 1.5rem;
  gap: 1rem;
}

.project-info {
  flex: 1;
}

.project-name {
  font-size: 1.4rem;
  font-weight: 700;
  color: var(--primary-color);
  margin-bottom: 0.5rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.project-icon {
  font-size: 1.5rem;
}

.project-description {
  color: var(--text-secondary);
  line-height: 1.6;
  font-size: 0.95rem;
}

.project-links {
  flex-shrink: 0;
}

.github-link {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 40px;
  height: 40px;
  background: var(--primary-color);
  color: white;
  border-radius: 8px;
  text-decoration: none;
  transition: all 0.3s ease;
}

.github-link:hover {
  background: var(--secondary-color);
  transform: scale(1.1);
}

.github-icon {
  width: 20px;
  height: 20px;
}

.project-features,
.project-tech,
.project-stats {
  margin-bottom: 1.5rem;
}

.features-title,
.tech-title {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-size: 1rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 1rem;
}

.features-icon,
.tech-icon {
  font-size: 1.1rem;
}

.features-list {
  list-style: none;
  margin: 0;
  padding: 0;
}

.feature-item {
  display: flex;
  align-items: flex-start;
  gap: 0.5rem;
  margin-bottom: 0.5rem;
  color: var(--text-secondary);
  font-size: 0.9rem;
  line-height: 1.5;
}

.feature-bullet {
  color: var(--primary-color);
  font-weight: bold;
  flex-shrink: 0;
}

.tech-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tech-tag {
  background: linear-gradient(135deg, rgba(37, 99, 235, 0.1), rgba(6, 182, 212, 0.1));
  color: var(--primary-color);
  border: 1px solid rgba(37, 99, 235, 0.2);
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  font-size: 0.75rem;
  font-weight: 500;
  transition: all 0.3s ease;
}

.tech-tag:hover {
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  color: white;
  transform: translateY(-1px);
}

.project-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
  gap: 1rem;
  padding-top: 1rem;
  border-top: 1px solid var(--border-color);
}

.stat-item {
  text-align: center;
}

.stat-number {
  display: block;
  font-size: 1.2rem;
  font-weight: 700;
  color: var(--primary-color);
  margin-bottom: 0.25rem;
}

.stat-label {
  font-size: 0.75rem;
  color: var(--text-secondary);
  opacity: 0.8;
}

@media (max-width: 768px) {
  .open-source {
    padding: 3rem 0;
  }
  
  .section-title {
    font-size: 2rem;
    flex-direction: column;
    gap: 0.5rem;
  }
  
  .projects-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .project-card {
    padding: 1.5rem;
  }
  
  .card-header {
    flex-direction: column;
    gap: 1rem;
  }
  
  .project-name {
    font-size: 1.2rem;
  }
  
  .project-stats {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 480px) {
  .open-source {
    padding: 2.5rem 0;
  }
  
  .section-title {
    font-size: 1.75rem;
  }
  
  .project-card {
    padding: 1.25rem;
  }
  
  .project-name {
    font-size: 1.1rem;
  }
  
  .project-description {
    font-size: 0.875rem;
  }
  
  .feature-item {
    font-size: 0.875rem;
  }
  
  .project-stats {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>