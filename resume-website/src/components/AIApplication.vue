<template>
  <section class="ai-application">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">
          <span class="title-icon">🤖</span>
          AI技术应用
        </h2>
        <div class="section-line"></div>
      </div>
      
      <div class="applications-grid">
        <div class="application-card" v-for="(app, index) in applications" :key="index">
          <div class="card-header">
            <div class="app-info">
              <h3 class="app-name">
                <span class="app-icon">{{ app.icon }}</span>
                {{ app.name }}
              </h3>
              <p class="app-description">{{ app.description }}</p>
            </div>
            <div class="app-type">
              <span class="type-badge">{{ app.type }}</span>
            </div>
          </div>
          
          <div class="app-features">
            <h4 class="features-title">
              <span class="features-icon">⚡</span>
              核心功能
            </h4>
            <ul class="features-list">
              <li v-for="feature in app.features" :key="feature" class="feature-item">
                <span class="feature-bullet">•</span>
                {{ feature }}
              </li>
            </ul>
          </div>
          
          <div class="app-tech">
            <h4 class="tech-title">
              <span class="tech-icon">🛠️</span>
              技术栈
            </h4>
            <div class="tech-tags">
              <span class="tech-tag" v-for="tech in app.techStack" :key="tech">{{ tech }}</span>
            </div>
          </div>
          
          <div class="app-stats">
            <div class="stat-item" v-for="stat in app.stats" :key="stat.label">
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
  name: 'AIApplication',
  data() {
    return {
      applications: [
        {
          name: '基于 Dify 设计的药监工作流架构',
          description: '利用 Dify 低代码平台构建药监行业智能工作流系统，实现业务流程自动化和智能化监管',
          icon: '💊',
          type: '行业应用',
          features: [
            'Dify 平台可视化工作流设计',
            '药监业务流程自动化引擎',
            '智能文档审核和风险识别',
            '监管数据实时监控和预警',
            '多部门协同办公系统',
            '符合药监法规的合规性检查'
          ],
          techStack: ['Dify', 'AI工作流', '自然语言处理', '数据挖掘', '监管系统'],
          stats: [
            { label: '流程节点', value: '15+' },
            { label: '监管范围', value: '全流程' },
            { label: '智能化', value: '80%' }
          ]
        },
        {
          name: '基于 N8N 工作流的微信公众号自动发布',
          description: '使用 N8N 自动化工作流平台，实现内容创作、审核、发布的全流程自动化',
          icon: '📱',
          type: '自动化工具',
          features: [
            'N8N 可视化工作流编排',
            '内容自动创作和编辑',
            '多平台内容同步发布',
            '定时任务和触发器管理',
            '数据统计和效果分析',
            '异常处理和告警机制'
          ],
          techStack: ['N8N', '微信公众号API', '内容管理', '定时任务', '数据统计'],
          stats: [
            { label: '发布效率', value: '10倍' },
            { label: '覆盖平台', value: '多平台' },
            { label: '自动化率', value: '90%' }
          ]
        },
        {
          name: '基于扣子完成热点新闻的提取',
          description: '利用扣子（Coze）AI 平台构建智能新闻分析系统，自动提取和总结热点新闻内容',
          icon: '📰',
          type: 'AI助手',
          features: [
            '扣子平台 AI 助手开发',
            '热点新闻自动抓取和筛选',
            '智能内容摘要和关键词提取',
            '情感分析和趋势预测',
            '多维度新闻分类和标签',
            '个性化推荐和推送机制'
          ],
          techStack: ['扣子(Coze)', '自然语言处理', '数据分析', '机器学习', 'API集成'],
          stats: [
            { label: '处理速度', value: '实时' },
            { label: '准确率', value: '95%' },
            { label: '覆盖率', value: '全网' }
          ]
        },
        {
          name: '基于 N8N 和 SpringBoot 的图书馆分类整理',
          description: '结合 N8N 工作流和 SpringBoot 后端服务，实现图书馆图书的智能分类和整理系统',
          icon: '📚',
          type: '系统集成',
          features: [
            'N8N 工作流自动化处理',
            'SpringBoot 微服务架构',
            '图书信息智能识别和录入',
            '自动分类算法和规则引擎',
            '库存管理和借阅系统',
            '数据分析和报表生成'
          ],
          techStack: ['N8N', 'SpringBoot', '机器学习', '数据库', 'RESTful API'],
          stats: [
            { label: '分类效率', value: '95%' },
            { label: '处理能力', value: '万级' },
            { label: '准确率', value: '98%' }
          ]
        }
      ]
    }
  }
}
</script>

<style scoped>
.ai-application {
  padding: 4rem 0;
  background: white;
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

.applications-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
  gap: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

.application-card {
  background: white;
  border-radius: 16px;
  padding: 2rem;
  box-shadow: var(--shadow);
  border: 1px solid var(--border-color);
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.application-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
}

.application-card:hover {
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

.app-info {
  flex: 1;
}

.app-name {
  font-size: 1.4rem;
  font-weight: 700;
  color: var(--primary-color);
  margin-bottom: 0.5rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.app-icon {
  font-size: 1.5rem;
}

.app-description {
  color: var(--text-secondary);
  line-height: 1.6;
  font-size: 0.95rem;
}

.app-type {
  flex-shrink: 0;
}

.type-badge {
  background: linear-gradient(135deg, rgba(37, 99, 235, 0.1), rgba(6, 182, 212, 0.1));
  color: var(--primary-color);
  border: 1px solid rgba(37, 99, 235, 0.2);
  padding: 0.3rem 0.8rem;
  border-radius: 12px;
  font-size: 0.75rem;
  font-weight: 500;
}

.app-features,
.app-tech,
.app-stats {
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

.app-stats {
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
  .ai-application {
    padding: 3rem 0;
  }
  
  .section-title {
    font-size: 2rem;
    flex-direction: column;
    gap: 0.5rem;
  }
  
  .applications-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .application-card {
    padding: 1.5rem;
  }
  
  .card-header {
    flex-direction: column;
    gap: 1rem;
  }
  
  .app-name {
    font-size: 1.2rem;
  }
  
  .app-stats {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 480px) {
  .ai-application {
    padding: 2.5rem 0;
  }
  
  .section-title {
    font-size: 1.75rem;
  }
  
  .application-card {
    padding: 1.25rem;
  }
  
  .app-name {
    font-size: 1.1rem;
  }
  
  .app-description {
    font-size: 0.875rem;
  }
  
  .feature-item {
    font-size: 0.875rem;
  }
  
  .app-stats {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>