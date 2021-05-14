<template lang="pug">
.home
  .hero.is-primary
    .hero-body
      p.title.popins JING XIAOLEI
      p.subtitle jingxiaolei.com

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
        img(src="@/assets/changshiban.jpeg")

      .content changshibandotcom

    .block(v-for="item in items")
      .subtitle.popins
        b-icon(
          :pack="item.pack"
          :icon="item.icon"
          type="is-primary")
        |  {{ item.title }}
      a.content(:href="item.href") {{ item.href }}
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
  width 100vw
  height auto
  padding 20px
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
</style>
