<script>
import MediaFeature from "./components/MediaFeature.vue";

export default {
  components: {
    MediaFeature,
  },

  data() {
    return {
      features: [
        {
          title: "Photography",
          text: "Every photograph we produce finds the beauty in your property while serving as a profitable asset.",
          url: "image_1_1.png",
          url2: "image_1_2.png",
          items: ["Drone Photography", "Interiors", "Exteriors / Architectural"]
        },
        {
          title: "Virtual Staging",
          text: "Our staging will help you sell the potential of your space.<br/>We can work off of our own photography or photos you provide.",
          url: "image_2.png",
        },
        {
          title: "Renderings",
          text: "Renderings are the gold standard in pre-construction marketing.",
          url: "image_3.png",
          items: ["Interiors", "Exteriors"]
        },
        {
          title: "Interactive Tours",
          text: "Give your audience the ability to explore your property without requiring in-person travel.",
          url: "image_4.png",
          items: ["Matterport", "Video Walkthroughs"]
        },
        {
          title: "Floor Plans",
          text: "We produce laser-precise floor plans faster than any other service.",
          url: "image_5.png",
          items: ["On-site Measure", "2D Floor Plans", "3D Floor Plans"]
        },
        {
          title: "Video",
          text: "Video content has higher engagement and will help your property stand out online.",
          url: "image_6.png",
          items: ["Drone Cinematography", "Interiors", "Exteriors / Architectural"]
        },
      ],
    };
  },
};
</script>

<template>
  <div class="wrapper">
    <header class="header">
      <div class="header__container">
        <h1 class="header__title title">
          We make creative media that <span>adds value</span>
        </h1>
      </div>
    </header>

    <main class="page">
      <div class="main__container">
        <section class="page__features">
          <div class="features__container">
            <MediaFeature
              v-for="feature in features"
              :title="feature.title"
              :text="feature.text"
              :url="feature.url"
              :url2="feature.url2"
              :items="feature.items"
            />
          </div>
        </section>
      </div>
    </main>

    <footer class="footer">
      <div class="footer__container">
        <div class="footer__actions">
          <button type="button" class="footer__button button">
            Get Started
          </button>
        </div>
      </div>
    </footer>
  </div>
</template>

<style lang="scss" scoped>
.wrapper {
  min-height: 100%;
  display: flex;
  flex-direction: column;
  overflow: hidden;
}

.header__container {
  max-width: var(--section-heading);
  box-sizing: content-box;
  margin: 0 auto;
  align-items: center;
  text-align: center;
}

.title {
  font-family: Poppins;
  font-weight: 700;
  font-size: 3.5rem;
  line-height: 3.4375rem;
  color: var(--color-heading);
  span {
    color: var(--color-highlighted);
  }
}

.main__container {
  margin: 5rem auto;
}

.features__container {
  display: flex;
  flex-wrap: wrap;
  row-gap: 2.5rem;
  column-gap: 1.875rem;
  justify-content: center;
}

.footer__container {
  max-width: var(--max-width-container);
  box-sizing: content-box;
  margin: 0 auto;
  text-align: center;
}

.button {
  font-family: Poppins;
  font-weight: 700;
  font-size: 1.0625rem;
  display: inline-block;
  line-height: 3.75rem;
  text-transform: uppercase;
  letter-spacing: 0.2em;
  padding: 0px 5.1945rem;
  background-color: #1b264f;
  border-radius: 0.75rem;
  border: none;
  outline: none;
  transition: all 0.3s ease 0s;
  color: #fff;
  @media (any-hover: hover) {
    &:hover {
      background-color: #121933;
    }
  }
  &._fw {
    width: 100%;
  }
}
</style>
