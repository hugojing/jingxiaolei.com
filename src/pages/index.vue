<template lang="pug">
.home
  .hero.is-primary
    .hero-body
      p.title.popins JING XIAOLEI
      p.subtitle jingxiaolei.com

  section
    b-tabs(type="is-toggle-rounded" v-model="activeTab")
      b-tab-item(label="社交媒体" icon="google-photos")
        .container
          .block
            .subtitle.popins
              b-icon(
                pack="fas"
                icon="link"
                type="is-primary")
              |  博客
            a.content(href="https://changshiban.com") https://changshiban.com

          .block
            .subtitle.popins
              b-icon(
                pack="fab"
                icon="weixin"
                type="is-primary")
              |  微信公众号
              
            .content 唱诗班
            
            figure.image.is-128x128
              img(src="@/assets/changshiban.jpg")

            .content changshibandotcom

          .block
            .subtitle.popins
              b-icon(
                pack="fab"
                icon="weixin"
                type="is-primary")
              |  微信视频号

            figure.image.is-weixin-video
              img(src="@/assets/weixin-video.jpg")

          .block(v-for="item in items")
            .subtitle.popins
              b-icon(
                :pack="item.pack"
                :icon="item.icon"
                type="is-primary")
              |  {{ item.title }}
            a.content(:href="item.href") {{ item.href }}
      
      b-tab-item(label="音乐" icon="music")
        p 懒得写，反正到处的平台上搜 Luei 就完事
      b-tab-item(label="还没想好" icon="video")
        p 还没想好放啥
</template>

<script>
export default {
  name: 'home',

  layout: 'blank',

  head() {
    return {
      title: 'JING XIAOLEI',
    }
  },

  data() {
    return {
      activeTab: 0,
      items: [
        {
          title: '知乎',
          pack: 'fab',
          icon: 'zhihu',
          href: 'https://www.zhihu.com/people/jingxiaolei',
        },
        {
          title: 'Github',
          pack: 'fab',
          icon: 'github',
          href: 'https://github.com/hugojing',
        },
        {
          title: 'Instagram',
          pack: 'fab',
          icon: 'instagram',
          href: 'https://www.instagram.com/jing_xiaolei',
        },
        {
          title: '更多...',
          pack: 'fas',
          icon: 'info',
          href: '正在添加中',
        },
      ],
    }
  },
}
</script>

<style lang="stylus" scoped>
.hero
  text-align center

.container
  width auto
  height auto
  padding 20px 0
  text-align center

  .block
    margin 50px 0 70px
    .subtitle
    .content
      margin-bottom 10px

    .subtitle
      color #7957d5

    a
      color black

    .image
      display inline-block

    .is-weixin-video
      width 250px
      height auto
      margin-bottom -30px
</style>
