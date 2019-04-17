<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<h1>不应该使用引用，要页面title</h1>
<div id="main-wrapper">
	<section id="entity_section" class="entity_section">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="entity_wrapper">
						<div class="entity_title">
							<h1>
								<a href="#">新闻标题</a>
							</h1>
						</div>
						<!-- entity_title -->

						<div class="entity_meta">
							<a href="#" target="_self">时间</a>, 作者: <a href="#" target="_self">作者</a>
						</div>
						<!-- entity_meta -->

						<div class="entity_rating">
							<!-- 推荐指数 -->
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-full"></i>
						</div>
						<!-- entity_rating -->

						<div class="entity_social">
							<a href="#" class="icons-sm sh-ic"> <i
								class="fa fa-share-alt"></i> <!-- 分享次数 --> <b>分享次数424</b> <span
								class="share_ic">Shares</span> </a>
							<!-- 分享链接 -->
							<a href="#" class="icons-sm fb-ic"><i class="fa fa-facebook"></i>
							</a>
							<!--Twitter-->
							<a href="#" class="icons-sm tw-ic"><i class="fa fa-twitter"></i>
							</a>
							<!--Google +-->
							<a href="#" class="icons-sm inst-ic"><i
								class="fa fa-google-plus"> </i> </a>
							<!--Linkedin-->
							<a href="#" class="icons-sm tmb-ic"><i class="fa fa-ge">
							</i> </a>
							<!--Pinterest-->
							<a href="#" class="icons-sm rss-ic"><i class="fa fa-rss">
							</i> </a>
						</div>
						<!-- entity_social -->

						<div class="entity_thumb">
							页头图片 <img class="img-responsive"
								src="assets/img/category_img_top.jpg" alt="feature-top">
						</div>
						<!-- entity_thumb -->

						<div class="entity_content">
							<p>主题内容 But I must explain to you how all this mistaken idea
								of denouncing pleasure and praising pain was born and I will
								give you a complete account of the system, and expound the
								actual teachings of the great explorer of the truth, the
								master-builder of human happiness. No one rejects, dislikes, or
								avoids pleasure itself, because it is pleasure, but because
								those who do not know how to pursue pleasure rationally
								encounter consequences that are extremely painful.</p>

							<p>Nor again is there anyone who loves or pursues or desires
								to obtain pain of itself, because it is pain, but because
								occasionally circumstances occur in which toil and pain can
								procure him some great pleasure. To take a trivial example,
								which of us ever undertakes laborious physical exercise, except
								to obtain some advantage from it?</p>
							<!-- 块引用 -->
							<blockquote class="pull-left">But I must explain to
								you how all this mistaken idea of denouncing pleasure</blockquote>
							<p>主体内容But who has any right to find fault with a man who
								chooses to enjoy a pleasure that has no annoying consequences,
								or one who avoids a pain that produces no resultant pleasure? On
								the other hand, we denounce with righteous indignation and
								dislike men who are so beguiled and demoralized by the charms of
								pleasure of the moment, so blinded by desire, that they cannot
								foresee.Nor again is there anyone who loves or pursues or
								desires to obtain pain of itself, because it is pain, but
								because occasionally circumstances occur in which toil and pain
								can procure him some great pleasure. To take a trivial example,
								which of us ever undertakes laborious physical exercise, except
								to obtain some advantage from it? Nor again is there anyone who
								loves or pursues or desires to obtain pain of itself, because it
								is pain, but because occasionally circumstances occur in which
								toil and pain can procure him some great pleasure. To take a
								trivial example, which of us ever</p>

							<p>主体内容But I must explain to you how all this mistaken idea
								of denouncing pleasure and praising pain was born and I will
								give you a complete account of the system, and expound the
								actual teachings of the great explorer of the truth, the
								master-builder of human happiness. No one rejects, dislikes, or
								avoids pleasure itself, because it is pleasure, but because
								those who do not know how to pursue pleasure rationally
								encounter consequences that are extremely painful.</p>
						</div>
						<!-- entity_content -->

						<div class="entity_footer">
							<div class="entity_social">
								<span><i class="fa fa-share-alt"></i>分享次数424 <a href="#">分享链接</a>
								</span> <span><i class="fa fa-comments-o"></i>留言次数4 <a href="#">留言链接</a>
								</span>
							</div>
							<!-- entity_social -->

						</div>
						<!-- entity_footer -->

					</div>
					<!-- entity_wrapper -->

					<div class="related_news">
						<div class="entity_inner__title header_purple">
							<h2>
								<a href="#">相关新闻</a>
							</h2>
						</div>
						<!-- entity_title -->

						<div class="row">
							<div class="col-md-6">
								<div class="media">
									<div class="media-left">
										<a href="#"><img class="media-object"
											src="assets/img/cat-mobi-sm1.jpg"
											alt="Generic placeholder image"> </a>
									</div>
									<div class="media-body">
										<span class="tag purple"><a href="category.html"
											target="_self">Mobile</a> </span>

										<h3 class="media-heading">
											<a href="single.html" target="_self">上左新闻标题</a>
										</h3>
										<span class="media-date"><a href="#">10Aug- 2015</a>,
											by: <a href="#">Eric joan</a> </span>

										<div class="media_social">
											<span><a href="#"><i class="fa fa-share-alt"></i>424</a>
												Shares</span> <span><a href="#"><i
													class="fa fa-comments-o"></i>4</a> Comments</span>
										</div>
									</div>
								</div>
								<div class="media">
									<div class="media-left">
										<a href="#"><img class="media-object"
											src="assets/img/cat-mobi-sm3.jpg"
											alt="Generic placeholder image"> </a>
									</div>
									<div class="media-body">
										<span class="tag purple"><a href="category.html"
											target="_self">Mobile</a> </span>

										<h3 class="media-heading">
											<a href="single.html" target="_self">下左新闻标题</a>
										</h3>
										<span class="media-date"><a href="#">10Aug- 2015</a>,
											by: <a href="#">Eric joan</a> </span>

										<div class="media_social">
											<span><a href="#"><i class="fa fa-share-alt"></i>424</a>
												Shares</span> <span><a href="#"><i
													class="fa fa-comments-o"></i>4</a> Comments</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="media">
									<div class="media-left">
										<a href="#"><img class="media-object"
											src="assets/img/cat-mobi-sm2.jpg"
											alt="Generic placeholder image"> </a>
									</div>
									<div class="media-body">
										<span class="tag purple"><a href="category.html"
											target="_self">Mobile</a> </span>

										<h3 class="media-heading">
											<a href="single.html" target="_self">上右新闻标题</a>
										</h3>
										<span class="media-date"><a href="#">10Aug- 2015</a>,
											by: <a href="#">Eric joan</a> </span>

										<div class="media_social">
											<span><a href="#"><i class="fa fa-share-alt"></i>424</a>
												Shares</span> <span><a href="#"><i
													class="fa fa-comments-o"></i>4</a> Comments</span>
										</div>
									</div>
								</div>
								<div class="media">
									<div class="media-left">
										<a href="#"><img class="media-object"
											src="assets/img/cat-mobi-sm4.jpg"
											alt="Generic placeholder image"> </a>
									</div>
									<div class="media-body">
										<span class="tag purple"><a href="category.html"
											target="_self">Mobile</a> </span> <a href="single.html"
											target="_self"><h3 class="media-heading">下右新闻标题</h3> </a> <span
											class="media-date"><a href="#">10Aug- 2015</a>, by: <a
											href="#">Eric joan</a> </span>

										<div class="media_social">
											<span><a href="#"><i class="fa fa-share-alt"></i>424</a>
												Shares</span> <span><a href="#"><i
													class="fa fa-comments-o"></i>4</a> Comments</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Related news -->

					<div class="widget_advertisement">
						<img class="img-responsive"
							src="assets/img/category_advertisement.jpg" alt="广告链接图片728*90px ">
					</div>
					<!--Advertisement-->

					<div class="readers_comment">
						<div class="entity_inner__title header_purple">
							<h2>留言条 Comment</h2>
						</div>
						<!-- entity_title -->

						<!-- 留言板块 -->
						<div class="media">
							<!-- 留言者头像 -->
							<div class="media-left">
								<a href="#"> <img alt="64x64" class="media-object"
									data-src="assets/img/reader_img1.jpg"
									src="assets/img/reader_img1.jpg" data-holder-rendered="true">
								</a>
							</div>
							<!-- 留言内容 -->
							<div class="media-body">
								<h2 class="media-heading">
									<a href="#">留言者</a>
								</h2>
								留言内容But who has any right to find fault with a man who chooses
								to enjoy a pleasure that has no annoying consequences, or one
								who avoids a pain that produces no resultant pleasure?

								<div class="entity_vote">
									<a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true">赞</i>
									</a> <a href="#"><i class="fa fa-thumbs-o-down"
										aria-hidden="true">踩</i> </a> <a href="#"><span
										class="reply_ic">撤销赞或者踩Reply </span> </a>
								</div>

							</div>

						</div>
					</div>
					<!--Readers Comment-->

					<div class="widget_advertisement">
						<img class="img-responsive"
							src="assets/img/category_advertisement.jpg" alt="广告链接图片728*90px ">
					</div>
					<!--Advertisement-->

					<div class="entity_comments">
						<div class="entity_inner__title header_black">
							<h2>发表留言</h2>
						</div>
						<!--留言内容提交 -->

						<div class="entity_comment_from">
							<!-- 留言表单 -->
							<form>
								<!-- <div class="form-group">
									<input type="text" class="form-control" id="inputName"
										placeholder="用户名获取">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="inputEmail"
										placeholder="用户属性">
								</div> -->
								<div class="form-group comment">
									<textarea class="form-control" id="inputComment"
										placeholder="留言内容"></textarea>
								</div>
								<br><br><br><br>
								<button type="submit" class="btn btn-submit red">提交</button>
							</form>
						</div>
						<!--Entity Comments From -->

					</div>
					<!--Entity Comments -->

				</div>
				<!--Left Section-->
				<!-- 内容推荐板块 -->
				<div class="col-md-4">
					<div class="widget">
						<div class="widget_title widget_black">
							<h2>
								<a href="#">内容推荐</a>
							</h2>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object"
									src="assets/img/pop_right1.jpg" alt="相关新闻图"> </a>
							</div>
							<div class="media-body">
								<h3 class="media-heading">
									<a href="single.html" target="_self">相关新闻标题</a>
								</h3>
								<span class="media-date"><a href="#">新闻事件</a>, 作者: <a
									href="#">作者名</a> </span>

								<div class="widget_article_social">
									<span> <a href="single.html" target="_self"> <i
											class="fa fa-share-alt"></i>分享次数424</a> </span> <span> <a
										href="single.html" target="_self"><i
											class="fa fa-comments-o"></i>留言查看链接</a> </span>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object"
									src="assets/img/pop_right4.jpg" alt="Generic placeholder image">
								</a>
							</div>
							<div class="media-body">
								<h3 class="media-heading">
									<a href="single.html" target="_self">Kodak Hi-Speed shutter
										double shot camera comming soon</a>
								</h3>
								<span class="media-date"><a href="#">10Aug- 2015</a>, by:
									<a href="#">Eric joan</a> </span>

								<div class="widget_article_social">
									<span> <a href="single.html" target="_self"><i
											class="fa fa-share-alt"></i>424</a> Shares </span> <span> <a
										href="single.html" target="_self"><i
											class="fa fa-comments-o"></i>4</a> Comments </span>
								</div>
							</div>
						</div>
						<p class="widget_divider">
							<a href="#" target="_self">更多内容&nbsp;&raquo;</a>
						</p>
					</div>
					<!-- Popular News -->
					<!-- 可以做广告图片链接 -->
					<div class="widget hidden-xs m30">
						  <img class="img-responsive adv_img" src="assets/img/right_add1.jpg" alt="add_one">
    <img class="img-responsive adv_img" src="assets/img/right_add2.jpg" alt="add_one">
   <img class="img-responsive adv_img" src="assets/img/right_add3.jpg" alt="add_one">
    <img class="img-responsive adv_img" src="assets/img/right_add4.jpg" alt="add_one"> 
					</div>
					<!-- Advertisement -->
					<!-- 可以做广告图片链接 -->
					<div class="widget hidden-xs m30">
						<img class="img-responsive widget_img"
							src="assets/img/right_add5.jpg" alt="广告图片链接300*250px">
					</div>
					<!-- Advertisement -->

					<div class="widget reviews m30">
						<div class="widget_title widget_black">
							<h2>
								<a href="#">回顾内容/历史</a>
							</h2>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object"
									src="assets/img/pop_right1.jpg" alt="内容图片"> </a>
							</div>
							<div class="media-body">
								<h3 class="media-heading">
									<a href="single.html" target="_self">内容主题</a>
								</h3>
								<!-- 推荐指数 -->
								<span class="rating"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-half-full"></i> </span>
							</div>
						</div>

						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object"
									src="assets/img/pop_right4.jpg" alt="内容图片"> </a>
							</div>
							<div class="media-body">
								<h3 class="media-heading">
									<a href="single.html" target="_self">内容主题</a>
								</h3>
								<span class="rating"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-half-full"></i> </span>
							</div>
						</div>
						<p class="widget_divider">
							<a href="#" target="_self">更多内容链接&nbsp;&raquo;</a>
						</p>
					</div>
					<!-- Reviews News -->

					<div class="widget hidden-xs m30">
						<img class="img-responsive widget_img"
							src="assets/img/right_add6.jpg" alt="300*250px广告链接">
					</div>
					<!-- Advertisement -->

					<div class="widget m30">
						<div class="widget_title widget_black">
							<h2>
								<a href="#">热门内容</a>
							</h2>
						</div>
						<div class="media">
							<div class="media-left">
								<a href="#"><img class="media-object"
									src="assets/img/pop_right1.jpg" alt="内容图片"> </a>
							</div>
							<div class="media-body">
								<h3 class="media-heading">
									<a href="single.html" target="_self">内容标题</a>
								</h3>

								<div class="media_social">
									<span><i class="fa fa-comments-o"></i><a href="#">留言次数4</a>
									</span>
								</div>
							</div>
						</div>

						<p class="widget_divider">
							<a href="#" target="_self">更多内容&nbsp;&nbsp;&raquo; </a>
						</p>
					</div>
					<!-- Most Commented News -->

					<div class="widget m30">
						<div class="widget_title widget_black">
							<h2>
								<a href="#">作者介绍</a>
							</h2>
						</div>
						<div class="widget_body">
							<img class="img-responsive left" src="assets/img/editor.jpg"
								alt="作者头像">

							<p>内容Collaboratively administrate empowered markets via
								plug-and-play networks. Dynamically procrastinate B2C users
								after installed base benefits. Dramatically visualize customer
								directed convergence without</p>

							<p>内容Collaboratively administrate empowered markets via
								plug-and-play networks. Dynamically procrastinate B2C users
								after installed base benefits. Dramatically visualize customer
								directed convergence without revolutionary ROI.</p>
							<button class="btn pink">详细资料</button>
						</div>
					</div>
					<!-- Editor News -->

					<div class="widget hidden-xs m30">
						<img class="img-responsive add_img"
							src="assets/img/right_add7.jpg" alt="广告图片125*125px"> <img
							class="img-responsive add_img" src="assets/img/right_add7.jpg"
							alt="add_one"> <img class="img-responsive add_img"
							src="assets/img/right_add7.jpg" alt="add_one"> <img
							class="img-responsive add_img" src="assets/img/right_add7.jpg"
							alt="add_one">
					</div>
					<div class="widget hidden-xs m30">
						<img class="img-responsive widget_img"
							src="assets/img/podcast.jpg" alt="广告链接300*250px">
					</div>
					<!--Advertisement-->
				</div>
				<!--Right Section-->

			</div>
			<!-- row -->

		</div>
		<!-- container -->

	</section>

</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp"%>