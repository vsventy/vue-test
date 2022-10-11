<script>

export default {
  props: {
    title: {
      type: String,
      required: true
    },
    text: {
      type: String,
      required: true
    },
    items: {
      type: Array,
      required: false,
      default: () => []
    },
    url: {
      type: String,
      required: true
    },
    url2: {
      type: String,
      required: false
    }
  },

  setup() {
    const getImageUrl = (name) => {
      return new URL(`../assets/img/${name}`, import.meta.url).href
      }
    return { getImageUrl }
  }
}
</script>

<template>
  <div class="feature__container">
    <div class="feature__images images">
      <div class="images__container">
        <img class="top" v-bind:src="getImageUrl(url)" v-bind:alt="title">
        <img class="bottom" v-if="url2" v-bind:src="getImageUrl(url2)" v-bind:alt="title2">
      </div>
    </div>
    <div class="feature__content content">
      <h2 class="content__title title">{{ title }}</h2>
      <ul class="content__list list" v-if="items.length > 0">
        <li class="content__list-item list-item" v-for="item in items">{{ item }}</li>
      </ul>
      <div class="content__text text" v-html="text"></div>
    </div>
  </div>
</template>

<style lang="scss" scoped>

.feature__container {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  height: 336px;
  width: 437.5px;
  border-radius: 8px;
  background-color: #fff;
}

.feature__content {
  display: flex;
  flex-direction: column;
  padding: 2.5rem 1.875rem 0px 2.125rem;
}

.images {
  width: 183.5px;
  img.top {
    border-top-left-radius: 8px;
  }
  img.bottom {
    border-bottom-left-radius: 8px;
  }
}

.title {
  font-family: Poppins;
  font-weight: 700;
  font-size: 1.5rem;
  margin-bottom: 0.75rem;
}

.text {
  font-size: 0.9375rem;
  font-weight: 600;
  line-height: 1.5rem;
}

.list {
  margin-bottom: 0.75rem;
  padding: 0;
  list-style: none;
  li::before {
    content: "•";
    color: #D2AD81;
    margin-right: 0.625rem;
  }
}

.list-item {
  font-weight: 700;
  font-size: 0.9375rem;
}

</style>