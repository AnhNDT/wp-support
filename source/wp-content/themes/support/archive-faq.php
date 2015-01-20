<?php get_header(); ?>
<?php
$my_query = new WP_Query();

?>
			<div class="col col-main cf">
				
				<div class="search-box">
					<div class="cf">
						<form action="list.html" class="search-form">
						<input class="search-text" name="search" placeholder="お知りになりたいことは何ですか？" type="	text"/>
						<button class="btn-search">検索</button>
						</form>
					</div><!--/.cf-->
					<div class="cf search-tag">
						<a href="list.html"><span>AD基本機能</span></a>
						<a href="list.html"><span>EBiS API</span></a>
						<a href="list.html"><span>Google AdWords</span></a>
						<a href="list.html"><span>LOG</span></a>
						<a href="list.html"><span>LPO</span></a>
						<a href="list.html"><span>SEO</span></a>
						<a href="list.html"><span>TAG</span></a>
						<a href="list.html"><span>ViewThru</span></a>
						<a href="list.html"><span>Yahoo!プロモーシ</span></a>
						<a href="list.html"><span>ョン広告</span></a>
						<a href="list.html"><span>エンハンストキャンペーン</span></a>
						<a href="list.html"><span>エージェント権限</span></a>
						<a href="list.html"><span>スマホ/アプリ計測</span></a>
						<a href="list.html"><span>ソケット通信</span></a>
						<a href="list.html"><span>ダイレクト計測</span></a>
						<a href="list.html"><span>モバイル</span></a>
						<a href="list.html"><span>ユニファイドキャンペーン</span></a>
						<a href="list.html"><span>リスティング連携</span></a>
						<a href="list.html"><span>共通・他</span></a>
						<a href="list.html"><span>設定方法</span></a>
					</div><!--/.search-tag-->
				</div><!--/.search-box-->

				<div class="block">
					<h2>活用ステップ毎のFAQ</h2>
					<div class="content FAQ-step">
						<ul>
							<li><a href="#">導入後の初期設定</a></li>
							<li><a href="#">個人リストの投入</a></li>
							<li><a href="#">メール配信</a></li>
							<li><a href="#">サイト来訪個人解析</a></li>
							<li><a href="#">サイト来訪企業解析</a></li>
							<li><a href="#">アクセス分析</a></li>
							<li><a href="#">各種設定</a></li>
							<li><a href="#">用語集</a></li>
						</ul>
					</div><!--/.content-->
				</div><!---/.block-->

				<div class="block mt-30">
					<h2>閲覧の多いFAQ<p class="more"><a href="#" class="btn-more">一覧をみる</a></p></h2>
					<div class="content FAQ-browse">
						<ul>
							<li>
								<p class="first-col"><span class="number">1,854</span>views</p>
								<p class="second-col"><a href="#">Google adwords 広告CSV一括登録</a></p>
								<p class="third-col tag">
									<a href="#" class="tag-color-01">AD基本機能</a>
									<a href="#" class="tag-color-02">リスティング連携</a>
									<a href="#" class="tag-color-03">設定方法</a>
								</p>
							</li>
							<li>
								<p class="first-col"><span class="number">1,488</span>views</p>
								<p class="second-col"><a href="#">Yahoo!プロモーション広告CSV一括登録</a></p>
								<p class="third-col tag">
									<a href="#" class="tag-color-01">AD基本機能</a>
									<a href="#" class="tag-color-02">リスティング連携</a>
									<a href="#" class="tag-color-03">設定方法</a>
								</p>
							</li>
							<li>
								<p class="first-col"><span class="number">1,300</span>views</p>
								<p class="second-col"><a href="#">コンバージョン属性情報取得の設定方法</a></p>
								<p class="third-col tag">
									<a href="#" class="tag-color-01">AD基本機能</a>
									<a href="#" class="tag-color-03">設定方法</a>
								</p>
							</li>
							<li>
								<p class="first-col"><span class="number">1,100</span>views</p>
								<p class="second-col"><a href="#">リダイレクトプログラム設定方法	 </a></p>
								<p class="third-col tag">
									<a href="#" class="tag-color-01">AD基本機能</a>
									<a href="#" class="tag-color-02">共通・他</a>
									<a href="#" class="tag-color-03">設定方法</a>
								</p>
							</li>
							<li>
								<p class="first-col"><span class="number">1,000</span>views</p>
								<p class="second-col"><a href="#">設定マニュアル一式</a></p>
								<p class="third-col tag">
									<a href="#" class="tag-color-01">AD基本機能</a>
									<a href="#" class="tag-color-02">LOG</a>
									<a href="#" class="tag-color-03">LPO</a>
									<a href="#" class="tag-color-04">SEO</a>
									<a href="#" class="tag-color-05">TAG</a>
									<a href="#" class="tag-color-06">ViewThru</a>
									<a href="#" class="tag-color-07">エージェント権限</a>
									<a href="#" class="tag-color-08">リスティング連携</a>
								</p>
							</li>
							<li>
								<p class="first-col"><span class="number">1,000</span>views</p>
								<p class="second-col"><a href="#">コンバージョンが正しくカウントされない時にチェックすること</a></p>
								<p class="third-col tag">
									<a href="#" class="tag-color-01">AD基本機能</a>
									<a href="#" class="tag-color-02">設定方法</a>
								</p>
							</li>
						</ul>
					</div><!--/.content-->
				</div><!--/.block-->


			</div><!--/.col col-main cf-->

<?php get_sidebar(); ?>
<?php get_footer(); ?>