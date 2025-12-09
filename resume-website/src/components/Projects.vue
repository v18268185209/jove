<template>
  <section class="projects">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">项目经验</h2>
        <div class="section-line"></div>
      </div>
      
      <div class="projects-grid">
        <div class="project-card" v-for="(project, index) in projects" :key="index">
          <div class="project-header">
            <h3 class="project-title">{{ project.name }}</h3>
            <span class="project-period">{{ project.period }}</span>
          </div>
          
          <div class="project-role">{{ project.role }}</div>
          
          <div class="project-description">
            <p>{{ project.description }}</p>
          </div>
          
          <div class="project-highlights">
            <h4>项目亮点</h4>
            <ul>
              <li v-for="highlight in project.highlights" :key="highlight">
                {{ highlight }}
              </li>
            </ul>
          </div>
          
          <div class="project-tech">
            <h4>技术架构</h4>
            <div class="tech-architecture">
              <div class="tech-layer" v-for="layer in project.architecture" :key="layer.name">
                <span class="layer-name">{{ layer.name }}</span>
                <div class="layer-techs">
                  <span class="layer-tech" v-for="tech in layer.technologies" :key="tech">{{ tech }}</span>
                </div>
              </div>
            </div>
          </div>
          
          <div class="project-metrics" v-if="project.metrics">
            <h4>关键指标</h4>
            <div class="metrics-grid">
              <div class="metric-item" v-for="metric in project.metrics" :key="metric.label">
                <span class="metric-value">{{ metric.value }}</span>
                <span class="metric-label">{{ metric.label }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'Projects',
  data() {
    return {
      projects: [
        {
          name: '杭州药检项目',
          period: '2025.6 - 至今',
          role: 'Java 架构师 + Dify 编排',
          description: '用 Dify + DeepSeek-V3-R1 搭"药企合规 Agent"：历史资料 RAG → 流程图谱 → 规则推理，准确率 96%，人工审核时长从 4h → 20min。',
          highlights: [
            '基于 Dify + DeepSeek-V3-R1 构建药企合规 Agent 系统',
            '历史资料 RAG → 流程图谱 → 规则推理全链路',
            '准确率提升至 96%，人工审核效率提升 12 倍',
            '支持多种文档格式的智能解析和知识抽取'
          ],
          architecture: [
            {
              name: '前端层',
              technologies: ['Vue3', 'Dify UI', 'React-Flow']
            },
            {
              name: '应用层',
              technologies: ['Spring Cloud', 'Dify', 'DeepSeek-V3-R1']
            },
            {
              name: '数据层',
              technologies: ['PostgreSQL', '向量库', 'K8s GPU池']
            }
          ],
          metrics: [
            { label: 'QPS', value: '3k' },
            { label: '扩容时间', value: '30s' },
            { label: '准确率', value: '96%' },
            { label: '效率提升', value: '12x' }
          ]
        },
        {
          name: '智慧大脑应急工作台',
          period: '2022.2 - 2025.4',
          role: '架构师 / 技术经理',
          description: '技术负责人（10人小队）后端 0-1 微服务：Spring Boot + Alibaba Cloud + Nacos + Gateway，50+ 服务，千级 TPS 零重启扩容。',
          highlights: [
            '从 0 到 1 构建智慧大脑应急工作台产品矩阵',
            '浙江省中国移动全覆盖，日活用户 1000+',
            '自研千万级告警风暴抑制算法，存储成本降低 65%',
            '搭建 10 人特性小队，核心员工复用率 75%'
          ],
          architecture: [
            {
              name: '前端层',
              technologies: ['Vue2', 'MicroApp', 'UniApp']
            },
            {
              name: '网关层',
              technologies: ['Spring Gateway', 'Nacos', 'LoadBalancer']
            },
            {
              name: '服务层',
              technologies: ['Spring Boot', 'Spring Cloud', '50+ Services']
            },
            {
              name: '数据层',
              technologies: ['MyBatis-Plus', 'ES', 'Kafka', 'Redis']
            }
          ],
          metrics: [
            { label: '服务数量', value: '50+' },
            { label: 'TPS', value: '千级' },
            { label: '告警压缩', value: '40万→200条' },
            { label: '成本降低', value: '65%' }
          ]
        },
        {
          name: '华泰股票实时监控系统',
          period: '2021.4 - 2022.1',
          role: '后端开发',
          description: 'Java 开发（核心模块 Owner）实时曲线：Spring Boot + MyBatis 对接 LMAX 雷神低延迟行情总线，2ms 内拉取逐笔成交，WebSocket 推送前端 1s 60 帧无卡顿。',
          highlights: [
            '对接 LMAX 雷神低延迟行情总线，实现 2ms 实时数据拉取',
            'WebSocket 实时推送，1s 60 帧无卡顿显示',
            '本地 Caffeine + Redis 二级缓存，QPS 5w 稳定运行',
            'Docker 镜像仅 60MB，K8s HPA 水平扩容'
          ],
          architecture: [
            {
              name: '实时层',
              technologies: ['LMAX', 'WebSocket', '实时推送']
            },
            {
              name: '缓存层',
              technologies: ['Caffeine', 'Redis', '二级缓存']
            },
            {
              name: '数据层',
              technologies: ['MySQL', 'ShardingSphere', '分库分表']
            }
          ],
          metrics: [
            { label: '延迟', value: '<2ms' },
            { label: '帧率', value: '60fps' },
            { label: 'QPS', value: '5w' },
            { label: '镜像大小', value: '60MB' }
          ]
        },
        {
          name: '智能运检管控平台',
          period: '2017.6 - 2021.2',
          role: '后端开发',
          description: 'Java 开发（审批流 Owner）审批引擎：Spring + Spring MVC + MyBatis 扩展 Activiti，7级国网流程模板化，平均耗时 5天 → 1.5天。',
          highlights: [
            '扩展 Activiti 构建国网 7级审批流程引擎',
            '接入 13类国网中台数据，自研 ETL 规则引擎',
            '日清洗 800G 缺陷数据，准确率 99.3%',
            '年度节省人工 3000+ 人时'
          ],
          architecture: [
            {
              name: '流程层',
              technologies: ['Activiti', '审批引擎', '流程模板']
            },
            {
              name: '数据层',
              technologies: ['ETL引擎', '国网中台', '13类数据']
            },
            {
              name: '监控层',
              technologies: ['Redis哨兵', '服务熔断', '99.9%可用率']
            }
          ],
          metrics: [
            { label: '审批效率', value: '5天→1.5天' },
            { label: '数据处理', value: '800G/日' },
            { label: '准确率', value: '99.3%' },
            { label: '节省人工', value: '3000+人时' }
          ]
        }
      ]
    }
  }
}
</script>

<style scoped>
.projects {
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

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
  gap: 2rem;
}

.project-card {
  background: white;
  border-radius: 12px;
  padding: 2rem;
  box-shadow: var(--shadow);
  border: 1px solid var(--border-color);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
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
  transform: translateY(-4px);
  box-shadow: var(--shadow-lg);
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 0.5rem;
  flex-wrap: wrap;
  gap: 1rem;
}

.project-title {
  font-size: 1.5rem;
  font-weight: 600;
  color: var(--text-primary);
}

.project-period {
  font-size: 0.875rem;
  color: var(--text-secondary);
  background: var(--bg-secondary);
  padding: 0.25rem 0.75rem;
  border-radius: 1rem;
  white-space: nowrap;
}

.project-role {
  font-size: 1rem;
  font-weight: 500;
  color: var(--primary-color);
  margin-bottom: 1rem;
}

.project-description {
  margin-bottom: 1.5rem;
}

.project-description p {
  color: var(--text-secondary);
  line-height: 1.6;
}

.project-highlights h4,
.project-tech h4,
.project-metrics h4 {
  font-size: 1rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 1rem;
}

.project-highlights ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.project-highlights li {
  position: relative;
  padding-left: 1.5rem;
  margin-bottom: 0.5rem;
  color: var(--text-secondary);
  line-height: 1.5;
  font-size: 0.875rem;
}

.project-highlights li::before {
  content: '⚡';
  position: absolute;
  left: 0;
  top: 0;
  color: var(--accent-color);
}

.tech-architecture {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
}

.tech-layer {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 0.5rem;
  background: var(--bg-secondary);
  border-radius: 6px;
}

.layer-name {
  font-size: 0.875rem;
  font-weight: 500;
  color: var(--text-primary);
  min-width: 80px;
}

.layer-techs {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.layer-tech {
  font-size: 0.75rem;
  background: var(--primary-color);
  color: white;
  padding: 0.25rem 0.5rem;
  border-radius: 0.375rem;
  font-weight: 500;
}

.metrics-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
}

.metric-item {
  text-align: center;
  padding: 1rem;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  border-radius: 8px;
  color: white;
}

.metric-value {
  display: block;
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.25rem;
}

.metric-label {
  font-size: 0.75rem;
  opacity: 0.9;
}

@media (max-width: 768px) {
  .projects {
    padding: 3rem 0;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .projects-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .project-card {
    padding: 1.5rem;
  }
  
  .project-header {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .metrics-grid {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 480px) {
  .project-title {
    font-size: 1.25rem;
  }
  
  .tech-layer {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
  
  .layer-name {
    min-width: auto;
  }
}
</style>