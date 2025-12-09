<template>
  <section class="experience">
    <div class="container">
      <div class="section-header">
        <h2 class="section-title">工作经历</h2>
        <div class="section-line"></div>
      </div>
      
      <div class="experience-grid">
        <div class="experience-card" v-for="(exp, index) in experiences" :key="index">
          <div class="card-header">
            <div class="company-info">
              <h3 class="company-name">{{ exp.company }}</h3>
              <div class="position-meta">
                <span class="position">{{ exp.position }}</span>
                <span class="location">📍 {{ exp.location }}</span>
              </div>
            </div>
            <div class="duration-badge">
              <span class="duration">{{ exp.duration }}</span>
            </div>
          </div>
          
          <div class="card-content">
            <div class="achievements-section">
              <h4 class="achievements-title">
                <span class="title-icon">🎯</span>
                核心成就
              </h4>
              <div class="achievements-list">
                <div class="achievement-item" v-for="achievement in exp.achievements" :key="achievement">
                  <div class="achievement-bullet">
                    <div class="bullet-point"></div>
                  </div>
                  <div class="achievement-text">{{ achievement }}</div>
                </div>
              </div>
            </div>
            
            <div class="tech-section">
              <h4 class="tech-title">
                <span class="title-icon">⚡</span>
                技术栈
              </h4>
              <div class="tech-tags">
                <span class="tech-tag" v-for="tech in exp.techStack" :key="tech">{{ tech }}</span>
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
  name: 'Experience',
  data() {
    return {
      experiences: [
        {
          company: '杭州安恒信息技术股份有限公司',
          duration: '2025.06 – 至今',
          position: '技术架构师（AI 方向）',
          location: '杭州',
          achievements: [
            '0-1 设计"安全运营 + 大模型"双轮驱动架构：Spring Cloud Alibaba + Dify + K8s GPU池，单集群支撑 1 万 Agent 并发，CPU利用率提升 42%',
            '制定《AI-SOC 智能体技术白皮书》，统一需求 → 流程 → API 模板，需求评审耗时从 2h 降至 30min',
            '自研 Agent 可视化编排器（React-Flow + Java 元数据引擎），拖拽生成 Workflow，已沉淀 60+ 安全场景模板，复用率 80%',
            '搭建 GitOps 流水线（ArgoCD + Harbor + 自定义 GPU-Operator），实现"代码 push → 镜像构建 → 模型热更新"全链路 8min 内完成，0 人工干预，发布成功率 100%'
          ],
          techStack: ['Spring Cloud', 'Dify', 'K8s', 'GPU池', 'ArgoCD', 'React-Flow']
        },
        {
          company: '上海新炬网络技术有限公司杭州分公司',
          duration: '2022.02 – 2025.04',
          position: '架构师 & Team Leader',
          location: '杭州',
          achievements: [
            '从 0 孵化"智慧大脑应急工作台"产品矩阵：应急指挥、知识库、智云优服、CMDB、移动办公，浙江省中国移动全覆盖，日活用户 1000+',
            '技术：Spring Cloud + MyBatis-Plus + Redis-Cluster + K8s，自研"千万级告警风暴抑制算法"，把 40万/分钟 告警压缩为 200条 有效事件，存储成本 ↓ 65%',
            '管理：搭建 10 人"特性小队"（Java + 前端 + 测试），核心员工复用率 75%，迭代周期从 4周 缩至 2.6周；连续 3年 获客户"五星级合作伙伴"',
            '业务：作为客户网络运维部唯一外部技术接口，季度汇报风险清单与 SLA，重大故障由 3次/年 降至 0次'
          ],
          techStack: ['Spring Cloud', 'MyBatis-Plus', 'Redis-Cluster', 'K8s', '告警算法']
        },
        {
          company: '浩鲸云计算科技股份有限公司',
          duration: '2021.04 – 2022.01',
          position: '高级 Java 开发工程师',
          location: '杭州',
          achievements: [
            '负责"股票实时监控系统"核心模块：设计零信任接口安全规范（JWT + AK/SK + 动态 Salt），QPS 5万 无重放漏洞，接口延迟 < 20ms',
            'WebSocket + Redis Stream 实现 2s 内推送 5000+ 股票分时图，内存占用下降 42%，GC 停顿 < 15ms',
            '跨团队对接阿里主管（明瑾、麦田），用"技术雷达"模板把需求变更响应时间从 3天 缩短到 4h，版本准点率 100%'
          ],
          techStack: ['Java', 'WebSocket', 'Redis', 'JWT', '零信任安全']
        },
        {
          company: '上海创值网络有限公司',
          duration: '2017.06 – 2021.02',
          position: 'Java 开发工程师 → 技术骨干',
          location: '杭州',
          achievements: [
            '主导"智能运检管控平台"：接入 13类国网中台数据，自研 ETL 规则引擎，日清洗 800G 缺陷数据，准确率 99.3%，支撑 2.3万台设备 同时在线',
            '基于 Activiti 扩展"电网设备检修审批流"，7级审批耗时从 5天 压缩到 1.5天，年度节省人工 3000+ 人时',
            '连续 3年 获客户"年度优秀外包员工"，Sonar 缺陷率 0.08‰，团队排名第一'
          ],
          techStack: ['Java', 'Activiti', 'ETL', '国网中台', '审批流引擎']
        }
      ]
    }
  }
}
</script>

<style scoped>
.experience {
  padding: 3rem 0;
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

.experience-grid {
  display: grid;
  gap: 2rem;
  max-width: 900px;
  margin: 0 auto;
}

.experience-card {
  background: white;
  border-radius: 16px;
  padding: 2rem;
  box-shadow: var(--shadow);
  border: 1px solid var(--border-color);
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.experience-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 4px;
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
}

.experience-card:hover {
  transform: translateY(-4px);
  box-shadow: var(--shadow-lg);
}

.experience-card:hover::before {
  background: linear-gradient(135deg, var(--accent-color), var(--primary-color));
}

.card-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 1.5rem;
  gap: 1rem;
}

.company-info {
  flex: 1;
}

.company-name {
  font-size: 1.4rem;
  font-weight: 700;
  color: var(--primary-color);
  margin-bottom: 0.5rem;
  line-height: 1.3;
}

.position-meta {
  display: flex;
  flex-direction: column;
  gap: 0.25rem;
}

.position {
  font-size: 1.1rem;
  font-weight: 600;
  color: var(--text-primary);
}

.location {
  font-size: 0.875rem;
  color: var(--text-secondary);
  display: flex;
  align-items: center;
  gap: 0.25rem;
}

.duration-badge {
  flex-shrink: 0;
}

.duration {
  font-size: 0.875rem;
  color: var(--text-secondary);
  background: var(--bg-secondary);
  padding: 0.5rem 1rem;
  border-radius: 12px;
  font-weight: 500;
  border: 2px solid var(--border-color);
  white-space: nowrap;
}

.card-content {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.achievements-section {
  flex: 1;
}

.achievements-title,
.tech-title {
  font-size: 1rem;
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 1rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.title-icon {
  font-size: 1.1rem;
}

.achievements-list {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
}

.achievement-item {
  display: flex;
  align-items: flex-start;
  gap: 0.75rem;
}

.achievement-bullet {
  flex-shrink: 0;
  margin-top: 0.25rem;
}

.bullet-point {
  width: 8px;
  height: 8px;
  background: var(--primary-color);
  border-radius: 50%;
  position: relative;
}

.bullet-point::after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 4px;
  height: 4px;
  background: white;
  border-radius: 50%;
}

.achievement-text {
  color: var(--text-secondary);
  line-height: 1.6;
  font-size: 0.9rem;
}

.tech-section {
  flex: 1;
}

.tech-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tech-tag {
  font-size: 0.75rem;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  color: white;
  padding: 0.4rem 0.8rem;
  border-radius: 20px;
  font-weight: 500;
  box-shadow: 0 2px 4px rgba(37, 99, 235, 0.2);
  transition: all 0.3s ease;
}

.tech-tag:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(37, 99, 235, 0.3);
}

@media (max-width: 768px) {
  .experience {
    padding: 2.5rem 0;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .experience-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .experience-card {
    padding: 1.5rem;
  }
  
  .card-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 1rem;
  }
  
  .duration-badge {
    align-self: flex-end;
  }
}

@media (max-width: 480px) {
  .experience {
    padding: 2rem 0;
  }
  
  .section-title {
    font-size: 1.75rem;
  }
  
  .experience-card {
    padding: 1.25rem;
  }
  
  .company-name {
    font-size: 1.2rem;
  }
  
  .position {
    font-size: 1rem;
  }
  
  .achievement-text {
    font-size: 0.875rem;
  }
  
  .tech-tag {
    font-size: 0.7rem;
    padding: 0.3rem 0.6rem;
  }
}
</style>