<script setup>
</script>

<template>
  <div class="wrapper">
    
    <header class="header">
      <div class="header__container">
        <h1 class="header__title title ">We make creative media that <span >adds value</span></h1>
      </div>
    </header>
    
    <main class="page">
      <div class="main__container flex"></div>
    </main>

    <footer class="footer">
      <div class="footer__container">
        <div class="footer__actions">
          <button type="button" class="footer__button button">Get Started</button>
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

.footer__container {
  max-width: var(--max-width-container);
  box-sizing: content-box;
  margin: 0 auto;
  text-align: center;
}

.main__container {
  margin: 5rem auto;
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
