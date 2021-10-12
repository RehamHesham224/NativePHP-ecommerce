<!-- Blogs -->
<section id="blogs">
    <div class="container py-4">
        <h4 class="font-rubik font-size-20">Latest Blogs</h4>
        <hr>

        <div class="owl-carousel owl-theme">
            <?php
            foreach ($product->getData('bog ') as $item) :
            ?>
                <div class="item">
                    <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                        <h5 class="card-title font-size-16"><?= $item['blog_title'] ?? " unKnown"; ?></h5>
                        <img src="<?= $item['blog_image'] ?? "./assets/blog/blog1.jpg"; ?>" alt="cart image" class="card-img-top">
                        <p class="card-text font-size-14 text-black-50 py-1">"<?= $item['blog_text'] ?? "blog text"; ?>"</p>
                        <a href="#" class="color-second text-left">Go somewhere</a>
                    </div>
                </div>
            <?php
            endforeach;
            ?>
        </div>

    </div>
</section>
<!-- !Blogs -->