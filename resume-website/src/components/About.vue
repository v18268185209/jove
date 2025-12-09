<template>
  <section class="about">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">关于我</h2>
        <div class="section-line"></div>
      </div>
      
      <div class="about-content">
        <div class="profile-card">
          <div class="avatar-section">
            <div class="avatar-container">
              <img :src="aboutInfo.avatar" alt="胡振杰" class="avatar-image" />
              <div class="avatar-overlay">
                <div class="avatar-status">
                  <span class="status-dot"></span>
                  <span class="status-text">在职中</span>
                </div>
              </div>
            </div>
          </div>
          
          <div class="intro-section">
            <div class="card-header">
              <h3>个人简介</h3>
              <div class="tech-icon">🚀</div>
            </div>
            <p class="intro-text">{{ aboutInfo.description }}</p>
            
            <div class="personal-stats">
              <div class="stat-item" v-for="stat in aboutInfo.personalStats" :key="stat.label">
                <span class="stat-number">{{ stat.value }}</span>
                <span class="stat-label">{{ stat.label }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="highlights">
        <div class="highlight-item" v-for="highlight in aboutInfo.highlights" :key="highlight">
          <div class="highlight-icon">⚡</div>
          <span class="highlight-text">{{ highlight }}</span>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'About',
  data() {
    return {
      aboutInfo: {
        avatar: 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxyZWN0IHdpZHRoPSIyMDAiIGhlaWdodD0iMjAwIiBmaWxsPSIjMzc0MTUxIi8+CjxjaXJjbGUgY3g9IjEwMCIgY3k9IjgwIiByPSI0MCIgZmlsbD0iIzRiMzQ0NiIvPgo8cGF0aCBkPSJNMTIwIDE2MEMxNTAgMTYwIDE4MCA5NSAxODAgMzBDMTgwIDQ1IDE1MCAzMCA5MCAzMEM5MCAzMCAyMCA0NSAyMCAzMEMyMCA5NSA1MCAxNjAgMTAwIDE2MFoiIGZpbGw9IiM0YjM0NDYiLz4KPC9zdmc+',
        description: '9年 Java 云原生 & 大模型落地老兵，3年架构 + 3年 Team Lead，能从 0 到 1 交付「文生图 / 文生视频」高并发系统，也能带 10 人团队持续迭代。',
        personalStats: [
          { label: '工作经验', value: '9年' },
          { label: '团队管理', value: '10人' },
          { label: '项目交付', value: '50+' },
          { label: '技术架构', value: 'AI+云原生' }
        ],
        highlights: [
          '架构师 + 技术经理双重经验',
          'AI 大模型落地专家',
          '云原生系统架构设计',
          '团队管理与人才培养'
        ]
      }
    }
  }
}
</script>

<style scoped>
.about {
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
}

.section-line {
  width: 80px;
  height: 4px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  margin: 0 auto;
  border-radius: 2px;
}

.about-content {
  display: flex;
  justify-content: center;
  margin-bottom: 3rem;
}

.profile-card {
  background: white;
  border-radius: 20px;
  padding: 3rem;
  box-shadow: var(--shadow-lg);
  border: 1px solid var(--border-color);
  transition: all 0.3s ease;
  max-width: 800px;
  width: 100%;
  position: relative;
  overflow: hidden;
}

.profile-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 6px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
}

.profile-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
}

.avatar-section {
  display: flex;
  justify-content: center;
  margin-bottom: 2.5rem;
}

.avatar-container {
  position: relative;
  display: inline-block;
}

.avatar-image {
  width: 160px;
  height: 160px;
  border-radius: 50%;
  object-fit: cover;
  border: 4px solid var(--primary-color);
  box-shadow: 0 0 30px rgba(37, 99, 235, 0.3);
  transition: all 0.3s ease;
}

.profile-card:hover .avatar-image {
  transform: scale(1.05);
  box-shadow: 0 0 40px rgba(37, 99, 235, 0.4);
}

.avatar-overlay {
  position: absolute;
  bottom: 0;
  right: 0;
  background: white;
  border-radius: 20px;
  padding: 0.5rem 1rem;
  box-shadow: var(--shadow);
  border: 2px solid var(--primary-color);
}

.avatar-status {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.status-dot {
  width: 8px;
  height: 8px;
  background: #10b981;
  border-radius: 50%;
  animation: pulse 2s infinite;
}

.status-text {
  font-size: 0.75rem;
  font-weight: 600;
  color: var(--text-primary);
}

@keyframes pulse {
  0%, 100% {
    opacity: 1;
    transform: scale(1);
  }
  50% {
    opacity: 0.7;
    transform: scale(1.1);
  }
}

.intro-section {
  text-align: center;
}

.card-header {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
  margin-bottom: 2rem;
}

.card-header h3 {
  font-size: 2rem;
  font-weight: 700;
  color: var(--text-primary);
}

.tech-icon {
  font-size: 2rem;
  opacity: 0.8;
}

.intro-text {
  color: var(--text-secondary);
  line-height: 1.8;
  font-size: 1.1rem;
  margin-bottom: 2.5rem;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}

.personal-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1.5rem;
  margin-top: 2rem;
}

.stat-item {
  text-align: center;
  padding: 1rem;
  background: var(--bg-secondary);
  border-radius: 12px;
  transition: all 0.3s ease;
}

.stat-item:hover {
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  color: white;
  transform: translateY(-2px);
}

.stat-number {
  display: block;
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.25rem;
}

.stat-label {
  font-size: 0.875rem;
  opacity: 0.8;
}

.highlights {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
}

.highlights {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1.5rem;
  margin-top: 3rem;
}

.highlight-item {
  display: flex;
  align-items: center;
  gap: 1rem;
  background: white;
  padding: 1.5rem 2rem;
  border-radius: 12px;
  box-shadow: var(--shadow);
  border-left: 4px solid var(--primary-color);
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.highlight-item::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(135deg, rgba(37, 99, 235, 0.05), rgba(6, 182, 212, 0.05));
  opacity: 0;
  transition: opacity 0.3s ease;
}

.highlight-item:hover {
  transform: translateX(8px) translateY(-2px);
  box-shadow: var(--shadow-lg);
  border-left-color: var(--accent-color);
}

.highlight-item:hover::before {
  opacity: 1;
}

.highlight-icon {
  font-size: 1.5rem;
  flex-shrink: 0;
  position: relative;
  z-index: 1;
}

.highlight-text {
  color: var(--text-primary);
  font-weight: 600;
  position: relative;
  z-index: 1;
}

@media (max-width: 768px) {
  .about {
    padding: 3rem 0;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .profile-card {
    padding: 2rem;
    margin: 0 1rem;
  }
  
  .avatar-image {
    width: 120px;
    height: 120px;
  }
  
  .card-header h3 {
    font-size: 1.5rem;
  }
  
  .intro-text {
    font-size: 1rem;
  }
  
  .personal-stats {
    grid-template-columns: repeat(2, 1fr);
    gap: 1rem;
  }
  
  .highlights {
    grid-template-columns: 1fr;
    gap: 1rem;
  }
  
  .highlight-item {
    padding: 1rem 1.5rem;
  }
}

@media (max-width: 480px) {
  .about {
    padding: 2.5rem 0;
  }
  
  .section-title {
    font-size: 1.75rem;
  }
  
  .profile-card {
    padding: 1.5rem;
    margin: 0 0.5rem;
  }
  
  .avatar-image {
    width: 100px;
    height: 100px;
  }
  
  .card-header h3 {
    font-size: 1.25rem;
  }
  
  .intro-text {
    font-size: 0.9rem;
    margin-bottom: 2rem;
  }
  
  .personal-stats {
    grid-template-columns: 1fr;
    gap: 0.75rem;
  }
  
  .stat-item {
    padding: 0.75rem;
  }
  
  .stat-number {
    font-size: 1.25rem;
  }
  
  .highlight-item {
    padding: 1rem;
    gap: 0.75rem;
  }
  
  .highlight-icon {
    font-size: 1.25rem;
  }
}
</style>