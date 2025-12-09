<template>
  <section class="skills">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">技能特长</h2>
        <div class="section-line"></div>
      </div>
      
      <div class="skills-content">
        <div class="skills-category" v-for="category in skillCategories" :key="category.name">
          <div class="category-header">
            <div class="category-icon">{{ category.icon }}</div>
            <h3 class="category-name">{{ category.name }}</h3>
          </div>
          
          <div class="skills-grid">
            <div class="skill-item" v-for="skill in category.skills" :key="skill.name">
              <div class="skill-info">
                <span class="skill-name">{{ skill.name }}</span>
                <span class="skill-level">{{ skill.level }}</span>
              </div>
              <div class="skill-bar">
                <div class="skill-progress" :style="{ width: skill.percentage + '%' }"></div>
              </div>
              <div class="skill-description" v-if="skill.description">
                {{ skill.description }}
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="certifications">
        <h3 class="cert-title">认证与成就</h3>
        <div class="cert-grid">
          <div class="cert-item" v-for="cert in certifications" :key="cert">
            <span class="cert-icon">🏆</span>
            <span class="cert-text">{{ cert }}</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'Skills',
  data() {
    return {
      skillCategories: [
        {
          name: '后端开发',
          icon: '⚙️',
          skills: [
            {
              name: 'Java',
              level: '专家',
              percentage: 95,
              description: '源码级改造 Spring/MVC/Boot/Cloud，自研 Spring 生命周期扩展点、OpenFeign 负载均衡插件'
            },
            {
              name: 'JVM',
              level: '专家',
              percentage: 90,
              description: 'G1/ZGC + JIT + 逃逸分析，生产环境 30min 定位 CPU/内存抖动，GC 停顿 < 30ms'
            },
            {
              name: 'Spring Cloud',
              level: '专家',
              percentage: 92,
              description: '微服务架构设计，50+ 服务集群管理，千级 TPS 零重启扩容'
            },
            {
              name: '数据库',
              level: '熟练',
              percentage: 88,
              description: 'MySQL 分库分表（ShardingSphere），ES 检索，PB 级日志秒级查询'
            }
          ]
        },
        {
          name: 'AI 大模型',
          icon: '🤖',
          skills: [
            {
              name: '通义千问/DeepSeek/GPT-4',
              level: '专家',
              percentage: 90,
              description: '流式接口封装，背压、断点续传、Token 限流 SDK'
            },
            {
              name: 'Diffusers + K8s GPU池',
              level: '熟练',
              percentage: 85,
              description: 'GPU 利用率提升 62%，模型热更新全链路 8min 完成'
            },
            {
              name: 'Dify 工作流',
              level: '专家',
              percentage: 88,
              description: '基于 DIFY 设计 60+ Agent 节点，支持 RAG、插件热插拔'
            }
          ]
        },
        {
          name: '前端开发',
          icon: '🎨',
          skills: [
            {
              name: 'Vue2/Vue3',
              level: '熟练',
              percentage: 85,
              description: '自研 30+ 业务组件库，Tree-Shaking 后体积 ↓ 38%'
            },
            {
              name: 'UniApp',
              level: '熟练',
              percentage: 82,
              description: '一次编译，覆盖微信/支付宝/抖音小程序，累计上架 12 款，用户 60000+'
            },
            {
              name: 'Vite + TypeScript',
              level: '熟练',
              percentage: 80,
              description: '现代化前端构建工具链，优化开发和构建体验'
            }
          ]
        },
        {
          name: '云原生 & DevOps',
          icon: '☁️',
          skills: [
            {
              name: 'Kubernetes',
              level: '专家',
              percentage: 90,
              description: 'HPA 水平扩容，峰值 200 Pod 零丢包，GPU Operator 自定义'
            },
            {
              name: 'Docker',
              level: '熟练',
              percentage: 88,
              description: '镜像优化，60MB 轻量级镜像，快速部署和扩容'
            },
            {
              name: 'ArgoCD + GitOps',
              level: '熟练',
              percentage: 85,
              description: '实现代码 push → 镜像构建 → 模型热更新全链路自动化'
            }
          ]
        },
        {
          name: '大数据 & 实时计算',
          icon: '📊',
          skills: [
            {
              name: 'Kafka',
              level: '熟练',
              percentage: 85,
              description: '削峰 70%，下游消费延迟 < 1s，支撑百万级消息处理'
            },
            {
              name: 'Flink',
              level: '熟练',
              percentage: 80,
              description: '实时规则 + 双流 JOIN，100w/s 告警 → 3s 内生成事件'
            },
            {
              name: 'Redis',
              level: '熟练',
              percentage: 88,
              description: '集群模式，二级缓存架构，哨兵高可用配置'
            }
          ]
        }
      ],
      certifications: [
        '连续 3年 绩效 Top 5%',
        '连续 3年 获"年度优秀外包员工"',
        '连续 3年 获客户"五星级合作伙伴"',
        '团队排名第一（Sonar 缺陷率 0.08‰）',
        '版本准点率 100%',
        '发布成功率 100%'
      ]
    }
  }
}
</script>

<style scoped>
.skills {
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
}

.section-line {
  width: 80px;
  height: 4px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  margin: 0 auto;
  border-radius: 2px;
}

.skills-content {
  margin-bottom: 4rem;
}

.skills-category {
  margin-bottom: 3rem;
}

.category-header {
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-bottom: 2rem;
}

.category-icon {
  font-size: 2rem;
  width: 3rem;
  height: 3rem;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  border-radius: 50%;
  color: white;
}

.category-name {
  font-size: 1.5rem;
  font-weight: 600;
  color: var(--text-primary);
}

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 1.5rem;
}

.skill-item {
  background: var(--bg-secondary);
  border-radius: 8px;
  padding: 1.5rem;
  border: 1px solid var(--border-color);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.skill-item:hover {
  transform: translateY(-2px);
  box-shadow: var(--shadow);
}

.skill-info {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
}

.skill-name {
  font-weight: 600;
  color: var(--text-primary);
}

.skill-level {
  font-size: 0.875rem;
  color: var(--primary-color);
  background: rgba(37, 99, 235, 0.1);
  padding: 0.25rem 0.75rem;
  border-radius: 1rem;
  font-weight: 500;
}

.skill-bar {
  height: 6px;
  background: #e2e8f0;
  border-radius: 3px;
  overflow: hidden;
  margin-bottom: 1rem;
}

.skill-progress {
  height: 100%;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  border-radius: 3px;
  transition: width 0.8s ease;
  position: relative;
}

.skill-progress::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
  animation: shimmer 2s infinite;
}

@keyframes shimmer {
  0% { transform: translateX(-100%); }
  100% { transform: translateX(100%); }
}

.skill-description {
  font-size: 0.875rem;
  color: var(--text-secondary);
  line-height: 1.5;
}

.certifications {
  text-align: center;
}

.cert-title {
  font-size: 1.5rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 2rem;
}

.cert-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1rem;
}

.cert-item {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  background: linear-gradient(135deg, #fbbf24, #f59e0b);
  color: white;
  padding: 1rem 1.5rem;
  border-radius: 8px;
  font-weight: 500;
  box-shadow: var(--shadow);
  transition: transform 0.3s ease;
}

.cert-item:hover {
  transform: translateY(-2px);
}

.cert-icon {
  font-size: 1.25rem;
  flex-shrink: 0;
}

.cert-text {
  text-align: left;
}

@media (max-width: 768px) {
  .skills {
    padding: 3rem 0;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .skills-grid {
    grid-template-columns: 1fr;
  }
  
  .category-header {
    justify-content: center;
  }
  
  .cert-grid {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 480px) {
  .category-icon {
    width: 2.5rem;
    height: 2.5rem;
    font-size: 1.5rem;
  }
  
  .category-name {
    font-size: 1.25rem;
  }
  
  .skill-item {
    padding: 1rem;
  }
  
  .cert-item {
    padding: 0.75rem 1rem;
  }
}
</style>