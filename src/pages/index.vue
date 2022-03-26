<template lang="pug">
.home
  .hero.is-primary
    .hero-body
      p.title.popins JING XIAOLEI
      p.subtitle jingxiaolei.com

  section
    b-tabs(type="is-toggle-rounded" v-model="activeTab")
      b-tab-item(label="Blog" icon="alpha-b-box")
        .container
          .block
            .subtitle.popins
              b-icon(
                pack="fas"
                icon="link"
                type="is-primary")
              |  博客
            a.content(href="https://changshiban.com") https://changshiban.com
            .tip 收录所有文章（2013-至今）

          .block
            .subtitle.popins
              b-icon(
                pack="fab"
                icon="weixin"
                type="is-primary")
              |  微信公众号
              
            .content 唱诗班
            .tip 镜像同步（2015-至今）
            
            figure.image.is-128x128
              img(src="@/assets/changshiban.jpg")

            .content changshibandotcom

          .block
            .subtitle.popins
              b-icon(
                pack="fab"
                icon="zhihu"
                type="is-primary")
              |  知乎专栏
              
            a.content(href="https://www.zhihu.com/column/changshiban") https://www.zhihu.com/column/changshiban
            .tip 镜像同步（2020-至今）

      b-tab-item(label="社交媒体" icon="google-photos")
        .container
          .block(v-for="item in items")
            .subtitle.popins
              b-icon(
                :pack="item.pack"
                :icon="item.icon"
                type="is-primary")
              |  {{ item.title }}
            a.content(:href="item.href") {{ item.href }}
      
      b-tab-item(label="音乐" icon="music")
        .container
          .block(v-for="item in music")
            .subtitle.popins
              b-icon(
                :pack="item.pack"
                :icon="item.icon"
                type="is-primary")
              |  {{ item.title }}
            a.content(:href="item.href") {{ item.href }}

      b-tab-item(label="网站" icon="web")
        .container
          .block(v-for="item in sites")
            .subtitle.popins
              b-icon(
                :pack="item.pack"
                :icon="item.icon"
                type="is-primary")
              |  {{ item.title }}
            a.content(:href="item.href") {{ item.href }}

      b-tab-item(label="短视频" icon="video")
        .container
          .block
            .subtitle.popins
              b-icon(
                pack="fas"
                icon="camera"
                type="is-primary")
              |  抖音

            figure.image.is-weixin-video
              img(src="@/assets/douyin.png")

          .block
            .subtitle.popins
              b-icon(
                pack="fab"
                icon="weixin"
                type="is-primary")
              |  微信视频号

            figure.image.is-weixin-video
              img(src="@/assets/weixin-video.jpg")

          .block
            .subtitle.popins
              b-icon(
                pack="fas"
                icon="camera"
                type="is-primary")
              |  快手

            figure.image.is-weixin-video
              img(src="@/assets/kuaishou.jpg")

      b-tab-item(label="视频" icon="movie")
        .container
          .block(v-for="item in movies")
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
          title: 'Quora',
          pack: 'fab',
          icon: 'quora',
          href: 'https://www.quora.com/profile/JING-Zhixing',
        },
        {
          title: 'Instagram',
          pack: 'fab',
          icon: 'instagram',
          href: 'https://www.instagram.com/jing_xiaolei',
        },
        {
          title: 'Github',
          pack: 'fab',
          icon: 'github',
          href: 'https://github.com/hugojing',
        },
      ],
      music: [
        {
          title: 'bandcamp',
          pack: 'fas',
          icon: 'link',
          href: 'https://luei.bandcamp.com/',
        },
        {
          title: 'YouTube',
          pack: 'fas',
          icon: 'link',
          href: 'https://www.youtube.com/channel/UCNUa5TK9z54P4CIrSetoOqQ',
        },
        {
          title: 'SoundCloud',
          pack: 'fas',
          icon: 'link',
          href: 'https://soundcloud.com/luei2019',
        },
        {
          title: 'Spotify',
          pack: 'fas',
          icon: 'link',
          href: 'https://open.spotify.com/artist/3TS2ykUVTks3RNBVh1Ljia',
        },
        {
          title: 'Apple Music',
          pack: 'fas',
          icon: 'link',
          href: 'https://music.apple.com/artist/luei/1457799009',
        },
      ],
      sites: [
        {
          title: 'Douwei Music',
          pack: 'fas',
          icon: 'link',
          href: 'https://douweimusic.com/',
        },
        {
          title: '指南加加',
          pack: 'fas',
          icon: 'link',
          href: 'https://guidexx.com/',
        },
        {
          title: 'The Chinese Music',
          pack: 'fas',
          icon: 'link',
          href: 'https://thechinesemusic.com/',
        },
      ],
      movies: [
        {
          title: '哔哩哔哩',
          pack: 'fas',
          icon: 'link',
          href: 'https://space.bilibili.com/6546179',
        },
        {
          title: '西瓜视频',
          pack: 'fas',
          icon: 'link',
          href: 'https://www.ixigua.com/home/198340244945864/',
        },
        {
          title: '知乎视频',
          pack: 'fas',
          icon: 'link',
          href: 'https://www.zhihu.com/people/jingxiaolei/zvideos',
        },
      ],
    }
  },

  head() {
    return {
      title: 'JING XIAOLEI',
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

    .tip
      font-size 14px
      margin 10px 0

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
