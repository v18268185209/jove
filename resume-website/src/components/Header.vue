<template>
  <header class="header">
    <div class="container">
      <div class="header-content">
        <div class="avatar-section">
          <div class="avatar">
            <div class="avatar-placeholder">胡</div>
          </div>
          <div class="tech-orbs">
            <div class="orb orb-1"></div>
            <div class="orb orb-2"></div>
            <div class="orb orb-3"></div>
          </div>
        </div>
        <div class="info-section">
          <h1 class="name">{{ personalInfo.name }}</h1>
          <p class="title">{{ personalInfo.title }}</p>
          <div class="stats">
            <div class="stat-item">
              <span class="stat-number">{{ personalInfo.experience }}</span>
              <span class="stat-label">工作经验</span>
            </div>
            <div class="stat-item">
              <span class="stat-number">{{ personalInfo.age }}</span>
              <span class="stat-label">年龄</span>
            </div>
            <div class="stat-item">
              <span class="stat-number">{{ personalInfo.location }}</span>
              <span class="stat-label">所在地</span>
            </div>
          </div>
          <div class="contact-info">
            <div class="contact-item">
              <span class="contact-label">📱</span>
              <span class="contact-value">{{ personalInfo.phone }}</span>
            </div>
            <div class="contact-item">
              <span class="contact-label">📧</span>
              <span class="contact-value">{{ personalInfo.email }}</span>
            </div>
            <div class="contact-item">
              <span class="contact-label">💬</span>
              <span class="contact-value">{{ personalInfo.wechat }}</span>
              <div class="wechat-qr-container">
                <img 
                  :src="personalInfo.wechatQR" 
                  alt="微信二维码" 
                  class="wechat-qr" 
                  @click="showQRModal = true"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- 微信二维码模态框 -->
      <div v-if="showQRModal" class="qr-modal" @click="showQRModal = false">
        <div class="qr-modal-content" @click.stop>
          <button class="qr-modal-close" @click="showQRModal = false">×</button>
          <div class="qr-modal-body">
            <h3 class="qr-modal-title">微信扫码</h3>
            <img :src="personalInfo.wechatQR" alt="微信二维码" class="qr-modal-image" />
            <p class="qr-modal-wechat">微信号：{{ personalInfo.wechat }}</p>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',
  data() {
    return {
      showQRModal: false,
      personalInfo: {
        name: '胡振杰',
        title: '架构师&& AI',
        experience: '9年',
        age: '32岁',
        location: '浙江杭州',
        phone: '18268185209',
        email: 'huzhenjie@rjnetwork.net.cn',
        wechat: 'worker_680',
        wechatQR: '/me.jpg'
      }
    }
  }
}
</script>

<style scoped>
.header {
  background: linear-gradient(135deg, #1e3a8a 0%, #3730a3 50%, #1e40af 100%);
  color: white;
  padding: 3rem 0;
  position: relative;
  overflow: hidden;
}

.header::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grid" width="10" height="10" patternUnits="userSpaceOnUse"><path d="M 10 0 L 0 0 0 10" fill="none" stroke="rgba(255,255,255,0.1)" stroke-width="0.5"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
  opacity: 0.3;
}

.header-content {
  display: flex;
  align-items: center;
  gap: 3rem;
  position: relative;
  z-index: 1;
}

.avatar-section {
  position: relative;
  flex-shrink: 0;
}

.avatar {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  background: linear-gradient(135deg, #3b82f6, #06b6d4);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2.5rem;
  font-weight: bold;
  color: white;
  box-shadow: 0 0 30px rgba(59, 130, 246, 0.5);
  animation: pulse-glow 3s ease-in-out infinite;
}

.avatar-placeholder {
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
}

.tech-orbs {
  position: absolute;
  top: -10px;
  right: -10px;
}

.orb {
  position: absolute;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: #06b6d4;
  animation: float 6s ease-in-out infinite;
}

.orb-1 {
  top: 0;
  right: 0;
  animation-delay: 0s;
}

.orb-2 {
  top: 20px;
  right: -15px;
  animation-delay: 2s;
  background: #3b82f6;
}

.orb-3 {
  top: -10px;
  right: -25px;
  animation-delay: 4s;
  background: #8b5cf6;
}

.info-section {
  flex: 1;
}

.name {
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
  background: linear-gradient(135deg, #ffffff, #e0e7ff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.title {
  font-size: 1.25rem;
  color: #cbd5e1;
  margin-bottom: 2rem;
  font-weight: 300;
}

.stats {
  display: flex;
  gap: 2rem;
  margin-bottom: 2rem;
}

.stat-item {
  text-align: center;
}

.stat-number {
  display: block;
  font-size: 1.5rem;
  font-weight: 600;
  color: #06b6d4;
}

.stat-label {
  font-size: 0.875rem;
  color: #cbd5e1;
}

.contact-info {
  display: flex;
  gap: 2rem;
}

.contact-item {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-size: 0.875rem;
}

.contact-value {
  color: #e2e8f0;
}

.wechat-qr-container {
  position: relative;
  display: inline-block;
  margin-left: 0.5rem;
}

.wechat-qr {
  width: 40px;
  height: 40px;
  border-radius: 4px;
  cursor: pointer;
  transition: all 0.3s ease;
  border: 2px solid transparent;
  object-fit: cover;
}

.wechat-qr:hover {
  transform: scale(1.1);
  border-color: #06b6d4;
  box-shadow: 0 4px 8px rgba(6, 182, 212, 0.3);
}

@media (max-width: 768px) {
  .wechat-qr {
    width: 35px;
    height: 35px;
  }
}

@media (max-width: 480px) {
  .wechat-qr {
    width: 30px;
    height: 30px;
  }
}

/* 微信二维码模态框样式 */
.qr-modal {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.8);
  backdrop-filter: blur(5px);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
  animation: fadeIn 0.3s ease;
}

.qr-modal-content {
  background: white;
  border-radius: 16px;
  padding: 2rem;
  max-width: 400px;
  width: 90%;
  position: relative;
  box-shadow: var(--shadow-lg);
  animation: scaleIn 0.3s ease;
}

.qr-modal-close {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: none;
  border: none;
  font-size: 1.5rem;
  color: var(--text-secondary);
  cursor: pointer;
  width: 32px;
  height: 32px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  transition: all 0.3s ease;
}

.qr-modal-close:hover {
  background: var(--bg-secondary);
  color: var(--text-primary);
}

.qr-modal-body {
  text-align: center;
}

.qr-modal-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--text-primary);
  margin-bottom: 1.5rem;
}

.qr-modal-image {
  width: 250px;
  height: 250px;
  border-radius: 8px;
  object-fit: cover;
  margin-bottom: 1rem;
  box-shadow: var(--shadow);
}

.qr-modal-wechat {
  font-size: 1rem;
  color: var(--text-secondary);
  font-weight: 500;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@keyframes scaleIn {
  from {
    transform: scale(0.9);
    opacity: 0;
  }
  to {
    transform: scale(1);
    opacity: 1;
  }
}

@media (max-width: 480px) {
  .qr-modal-content {
    padding: 1.5rem;
    max-width: 350px;
  }
  
  .qr-modal-image {
    width: 200px;
    height: 200px;
  }
  
  .qr-modal-title {
    font-size: 1.25rem;
  }
}

@media (max-width: 768px) {
  .header-content {
    flex-direction: column;
    text-align: center;
    gap: 2rem;
  }
  
  .name {
    font-size: 2rem;
  }
  
  .stats {
    justify-content: center;
  }
  
  .contact-info {
    justify-content: center;
    flex-wrap: wrap;
  }
}

@media (max-width: 480px) {
  .header {
    padding: 2rem 0;
  }
  
  .avatar {
    width: 80px;
    height: 80px;
    font-size: 1.8rem;
  }
  
  .name {
    font-size: 1.75rem;
  }
  
  .stats {
    gap: 1rem;
  }
  
  .contact-info {
    flex-direction: column;
    gap: 1rem;
  }
}
</style>