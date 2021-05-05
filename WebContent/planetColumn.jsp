<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gb2312">
<title>星球研究所</title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
<link rel="stylesheet" href="css/planetcolumn.css">
</head>
<body>
<div style="margin-left:30px;margin-top:20px"><a href="index_1.jsp" style="color:white;text-decoration:none;font-size:30">返回首页</a></div>
<!-- partial:index.partial.html -->
<h1 class='logo'>
  星球研究所
  <span>走进太阳系(A.U.指天文单位)</span>
</h1>
<input class='planet9' id='pluto' name='planet' type='radio'>
<label class='pluto menu' for='pluto'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      冥王星
    </h2>
    <h3>39.5 A.U.</h3>
  </div>
</label>
<input class='planet8' id='neptune' name='planet' type='radio'>
<label class='neptune menu' for='neptune'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
海王星
    </h2>
    <h3>30.06 A.U.</h3>
  </div>
</label>
<input class='planet7' id='uranus' name='planet' type='radio'>
<label class='uranus menu' for='uranus'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      天王星
    </h2>
    <h3>19.18 A.U.</h3>
  </div>
</label>
<input class='planet6' id='saturn' name='planet' type='radio'>
<label class='saturn menu' for='saturn'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>     
土星
    </h2>
    <h3>9.539 A.U.</h3>
  </div>
</label>
<input class='planet5' id='jupiter' name='planet' type='radio'>
<label class='jupiter menu' for='jupiter'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      木星
    </h2>
    <h3>5.203 A.U.</h3>
  </div>
</label>
<input checked='checked' class='planet4' id='mars' name='planet' type='radio'>
<label class='menu mars' for='mars'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      火星
    </h2>
    <h3>1.524 A.U.</h3>
  </div>
</label>
<input checked='checked' class='planet3' id='earth' name='planet' type='radio'>
<label class='menu earth' for='earth'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      地球
    </h2>
    <h3>1 A.U.</h3>
  </div>
</label>
<input checked='checked' class='planet2' id='venus' name='planet' type='radio'>
<label class='menu venus' for='venus'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      金星
    </h2>
    <h3>0.723 A.U.</h3>
  </div>
</label>
<input checked='checked' class='planet1' id='mercury' name='planet' type='radio'>
<label class='menu mercury' for='mercury'>
  <div class='preview'></div>
  <div class='info'>
    <h2>
      <div class='pip'></div>
      水星
    </h2>
    <h3>0.39 A.U.</h3>
  </div>
</label>
<div class='solar'>
  <div class='solar_systm'>
    <div class='planet mercury'>
      <div class='planet_description mercury'>
        <h2>行星</h2>
        <h1>水星</h1>
        <p>水星是距太阳最近的行星。 它绕太阳旋转的速度比其他所有行星都要快，这就是为什么罗马人以众神的一位疾行报信者命名它的原因。</p>
        <label for='readMercury'>
          <a>
            了解水星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet venus'>
      <div class='planet_description venus'>
        <h2>行星</h2>
        <h1>金星</h1>
        <p>金星因爱与美的罗马女神而得名。 在远古时代，金星通常被认为是两个不同的恒星，即晚星和晨星。</p>
        <label for='readVenus'>
          <a>
            了解金星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet earth'>
      <div class='moon moon'>
        <h3>卫星</h3>
        <h2>月球</h2>
      </div>
      <div class='trajectory m'></div>
      <div class='planet_description earth'>
        <h2>行星</h2>
        <h1>地球</h1>
        <p>地球，我们的家园。 它是目前已知的大气层中唯一含有游离氧，表面有液态水海洋以及生命的行星。</p>
        <label for='readEarth'>
          <a>
            了解地球
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet mars'>
      <div class='moon deimos'>
        <h3>卫星</h3>
        <h2>火卫二</h2>
      </div>
      <div class='trajectory d'></div>
      <div class='moon phoebos'>
        <h3>卫星</h3>
        <h2>菲比斯</h2>
      </div>
      <div class='trajectory p'></div>
      <div class='planet_description mars'>
        <h2>行星</h2>
        <h1>火星</h1>
        <p>火星是太阳的第四行星和太阳系的第二最小行星。 以罗马战争之神的名字命名，通常被称为“红色星球”。</p>
        <label for='readMars'>
          <a>
            了解火星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet jupiter'>
      <div class='moon lo'>
        <h3>卫星</h3>
        <h2>一世</h2>
      </div>
      <div class='moon europa'>
        <h3>卫星</h3>
        <h2>木卫二</h2>
      </div>
      <div class='moon ganymede'>
        <h3>卫星</h3>
        <h2>木卫三</h2>
      </div>
      <div class='trajectory lop'></div>
      <div class='trajectory eu'></div>
      <div class='trajectory ga'></div>
      <div class='planet_description jupiter'>
        <h2>行星</h2>
        <h1>木星</h1>
        <p>木星是太阳系中最大的行星，它以罗马神话中的众神之王的名字命名。</p>
        <label for='readJupiter'>
          <a>
            了解木星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet saturn'>
      <div class='moon titan'>
        <h3>卫星</h3>
        <h2>土卫六</h2>
      </div>
      <div class='moon dione'>
        <h3>卫星</h3>
        <h2>土卫四</h2>
      </div>
      <div class='moon enceladus'>
        <h3>卫星</h3>
        <h2>土卫二</h2>
      </div>
      <div class='trajectory ti'></div>
      <div class='trajectory di'></div>
      <div class='trajectory enc'></div>
      <div class='planet_description saturn'>
        <h2>行星</h2>
        <h1>土星</h1>
        <p>土星是离太阳第六的行星，是太阳系中的第二大行星。 土星是泰坦君主克罗努斯（Cronus）的罗马名字。</p>
        <label for='readSaturn'>
          <a>
            了解土星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet uranus'>
      <div class='moon miranda'>
        <h3>卫星</h3>
        <h2>天卫五</h2>
      </div>
      <div class='moon ariel'>
        <h3>卫星</h3>
        <h2>羚羊卫星</h2>
      </div>
      <div class='moon umbriel'>
        <h3>卫星</h3>
        <h2>天卫二</h2>
      </div>
      <div class='trajectory mir'></div>
      <div class='trajectory ari'></div>
      <div class='trajectory umb'></div>
      <div class='planet_description uranus'>
        <h2>行星</h2>
        <h1>天王星</h1>
        <p>天王星是科学家发现的第一颗行星。 该行星以其巨大的倾斜度而著称，这导致其轴几乎直接指向太阳。</p>
        <label for='readUranus'>
          <a>
            了解天王星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet neptune'>
      <div class='moon triton'>
        <h3>卫星</h3>
        <h2>海卫一</h2>
      </div>
      <div class='moon proteus'>
        <h3>卫星</h3>
        <h2>海卫八</h2>
      </div>
      <div class='moon nereid'>
        <h3>卫星</h3>
        <h2>海卫二</h2>
      </div>
      <div class='trajectory tri'></div>
      <div class='trajectory pro'></div>
      <div class='trajectory ner'></div>
      <div class='planet_description neptune'>
        <h2>行星</h2>
        <h1>海王星</h1>
        <p>海王星是太阳系八大行星之一，也是已知太阳系中离太阳最远的大行星，是仅有的利用数学预测而非观测意外发现的行星</p>
        <label for='readNeptune'>
          <a>
            了解海王星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
  <div class='solar_systm'>
    <div class='planet pluto'>
      <div class='planet_description pluto'>
        <h2>矮行星</h2>
        <h1>冥王星</h1>
        <p>冥王星是柯伊伯带中的矮行星。冥王星是被发现的第一颗柯伊伯带天体，第一颗类冥天体，是太阳系内已知体积最大、质量第二大的矮行星。</p>
        <label for='readPluto'>
          <a>
            了解冥王星
          </a>
        </label>
      </div>
      <div class='overlay'></div>
    </div>
  </div>
</div>
<input class='read' id='readMercury' name='mercuryRead' type='radio'>
<label class='closeBig' for='closeMercury'></label>
<input class='read' id='closeMercury' name='mercuryRead' type='radio'>
<div class='panel'>
  <h1>水星</h1>
  <p>水星是太阳系的八大行星中最小且最靠近太阳的行星。水星因快速运动被称为墨丘利（Mercury），是罗马神话中飞速奔跑的信使神。</p>
  <p>水星最早被闪族人在（公元前三千年）发现，他们叫它Ubu-idim-gud-ud。最早的详细记录观察数据的是巴比伦人，他们称水星为gu-ad或gu-utu。希腊人给它起了两个古老的名字，当它出现于早晨时叫阿波罗，当它出现于傍晚叫赫耳墨斯，但是希腊天文学家知道这两个名字表示的是同一个东西。希腊哲学家赫拉克利特甚至认为水星和金星（维纳斯星）是绕太阳公转的而不是地球。中国古代称水星为“辰星”。它与太阳最大角距不超过28°，由于古代称30°为一辰，故而得名。</p>
  <img src='https://i2.wp.com/www.astronomytrek.com/wp-content/uploads/2012/11/mercury-1.jpg?fit=678%2C381&amp;ssl=1'>
  <h2>水星的轨道周期仅87.9691天，116天左右与地球会合一次，公转速度远远超过太阳系的其它行星。</h2>
  <p>水星的一个太阳日（从地球表面中午到中午的时间）持续相当于176个地球日，而恒星日（相对于固定点旋转一圈的时间）则持续59个地球日。 水星几乎被潮汐锁定在太阳上，随着时间的流逝，它减慢了行星的自转速度，使其几乎与绕太阳公转的轨道相匹配。 水星在所有行星中的轨道偏心率最高，与太阳的距离为46至7,000万公里。</p>
  <h2>水星是太阳系中最小的行星。</h2>
  <p>是肉眼可见的五个行星之一，水星在赤道上只有4879公里，而地球只有12742公里。</p>
  <h2>水星是密度第二高的星球。</h2>
  <p>即使水星很小，但却非常密集。 其每立方厘米的密度为5.4克，与其他行星相比，只有地球的密度比水星的大。 这主要是由于水星主要由重金属和岩石组成。</p>
  <h2>水星有“皱纹” </h2>
  <p>随着行星的铁芯冷却和收缩，水星的表面开始起皱。 科学家将这些皱纹命名为Lobate Scarps。 这些皱纹可能高达一英里高，几百英里长。</p>
  <br>
</div>
<input class='read' id='readVenus' name='venusRead' type='radio'>
<label class='closeBig' for='closeVenus'></label>
<input class='read' id='closeVenus' name='venusRead' type='radio'>
<div class='panel'>
  <h1>金星</h1>
  <p>金星是太阳的第二颗行星，以罗马的爱与美女神而得名。 该行星是唯一以雌性命名的行星，可能因其万神殿中最美丽的神而得名，因为它照亮了古代天文学家所知的五颗行星中最亮的一颗。</p>
  <p>在太阳系的八大行星中，金星是从太阳向外的第二颗行星，轨道公转周期为224.7天，没有天然的卫星。金星在中国古代称为太白、明星或大嚣，早晨出现于东方称启明，晚上出现于西方称长庚。到西汉时期，《史记‧天官书》作者司马迁从实际观测发现太白为白色，与“五行”学说联系在一起，正式把它命名为金星。英文名称源自罗马神话的爱与美的女神维纳斯（Venus），古希腊人称为阿佛洛狄忒，也是希腊神话中爱与美的女神。</p>
  <img src='https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2014/2-whatistheave.jpg'>
  <h2>金星上的一天超过地球上的一年。</h2>
  <p>金星绕轴自转的方向与太阳系内大多数的行星是相反的。金星绕太阳公转周期为224.701天，金星的自转周期是243天，是主要行星中自转最慢的。金星的太阳日比恒星日为短，在金星表面的观测者每隔116.75天就会看见太阳出没一次，这意味着金星的一天比水星的一天（176地球日）短。太阳会从西边升起，然后在东边落下。</p>
  <h2>金星与大多数其他行星的旋转方向相反。</h2>
  <p>这意味着金星以与太阳相反的方向旋转，这也称为逆行旋转。 可能的原因可能是过去与小行星或其他物体发生碰撞，导致行星改变了其旋转路径。 它也与我们太阳系中的大多数其他行星不同，因为它们没有自然卫星。</p>
  <h2>金星是夜空中第二亮的行星。</h2>
  <p>金星在夜空中的亮度仅次于月球，是第二亮的天体，视星等可以达到-4.7等，足以在地面照射出影子。</p>
  <h2>金星上的大气压力是地球的92倍。</h2>
  <p>虽然它的大小和质量与地球相似，但小行星在进入大气层时便被压碎，这意味着在行星表面上没有小陨石坑。 人在表面上所感受到的压力将等于地球深处所承受的压力。</p>
  <br>
</div>
<input class='read' id='readEarth' name='earthRead' type='radio'>
<label class='closeBig' for='closeEarth'></label>
<input class='read' id='closeEarth' name='earthRead' type='radio'>
<div class='panel'>
  <h1>地球</h1>
  <p>地球，我们人类共同的家园，是太阳系由内及外的第三颗行星，也是太阳系中直径、质量和密度最大的类地行星。它是唯一已知的大气层中含有游离氧，表面有液态水海洋以及生命的行星。</p>
  <p>地球是太阳系中第五大行星，比四大气态巨行星木星，土星，天王星和海王星小，但比其他三个岩质行星大，</p>
  <img src='https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=350'>
  <h2>地球的自转速度正在逐渐减小。</h2>
  <p>由于地球熔核、海洋和大气层的复杂运动，加上其他影响，地球自转的速度不断变化，这种减速几乎没有察觉地发生，大约每百年17毫秒，在2020年，科学家记录到的地球自转速度比以往任何时候都要快，科学家已经观测到了有史以来最快的28天。但是这种变化对我们来说很难觉察到，一天的长度增加到25小时之前可能长达1.4亿年。</p>
  <h2>地球曾经被认为是宇宙的中心。</h2>
  <p>由于太阳和行星相对于其视点的明显运动，古代科学家坚持认为地球保持静止，而其他天体绕其绕圆形轨道行进。 最终，哥白尼提出了太阳位于宇宙中心的观点，尽管事实并非如此。</p>
  <h2>地球具有强大的磁场。</h2>
  <p>这种现象是由行星的镍铁芯及其快速旋转引起的。 这种强大的磁场保护地球免受太阳风的影响。</p>
  <h2>地球上只有一颗天然卫星。</h2>
  <p>月球是太阳系中卫星－行星体积比最大的卫星。虽然冥王星和冥卫一之间的比值更大，但冥王星属于矮行星。月球和地球间的引力作用是引起地球潮汐现象的主要原因，而月球被地球潮汐锁定，因此月球的自转周期等于绕地球的公转周期，使月球始终以同一面朝向地球。月球被太阳照亮并朝向地球这一面的变化，导致月相的改变，黑暗部分和明亮部分被明暗界线分隔开来。</p>
  <br>
</div>
<input class='read' id='readMars' name='marsRead' type='radio'>
<label class='closeBig' for='closeMars'></label>
<input class='read' id='closeMars' name='marsRead' type='radio'>
<div class='panel'>
  <h1>火星</h1>
  <p>火星是离太阳第四近的行星，也是太阳系中仅次于水星的第二小的行星，为太阳系里四颗类地行星之一。西方称火星为玛尔斯，是罗马神话中的战神，也被称为“红色星球”；古汉语中则因为它荧荧如火，位置、亮度时常变动让人无法捉摸而称之为荧惑。</p>
  <img src='https://1.bp.blogspot.com/-ou7Je3OVg6U/WYtxDqjNp_I/AAAAAAAACSQ/fsopS5VtFg4bmlv8hQNfiRYfJqTygCotQCLcBGAs/s2048/Martian%2Blandscape%2Bby%2BAmante%2BLombardi.jpg'>
  <h2>火星和地球的陆地大致相同。</h2>
  <p>尽管火星仅占地球体积的15％，仅占地球质量的10％，但地球表面的三分之二左右被水覆盖。 火星表面重力仅是地球重力的37％（这意味着您在火星上的跳跃可能会高出将近三倍）。</p>
  <h2>火星是太阳系中最高的山脉的所在地。</h2>
  <p>奥林巴斯·蒙斯（Olympus Mons）是一座盾形火山，高21公里，直径600公里。 尽管已经形成了数十亿年的历史，但来自火山熔岩流的证据仍是最近的事，因此许多科学家认为，它仍可能活跃。</p>
  <h2>苏联、美国、欧洲、日本、印度、中国共已发射数十艘太空船研究火星表面、地质和气候，包括轨道卫星、登陆器和漫游车</h2>
  <p>2010年6月3日，俄罗斯开始在莫斯科进行世界首个模拟火星之旅实验，6名来自俄罗斯、中国、法国等国的志愿者将在狭小的模拟密封舱内生活520个日夜。
2014年6月28日，美国宇航局成功发射低密度超音速减速器，用来测试未来大型航天器着陆火星所需要的多项技术。 
2015年1月3日，据美联社报道，NASA着眼于在本世纪晚些时候把人类送入深层太空，而让大型航天器在这枚红色星球上安全着陆是众多工程挑战之一。
2021年2月5日20时，“天问一号”探测器发动机点火工作，顺利完成地火转移段第四次轨道中途修正，以确保按计划实施火星捕获。国家航天局同步公布了“天问一号”传回的首幅火星图像。 
2021年4月24日上午，中国第一辆火星车命名揭晓，名称为“祝融”。</p>
  <h2>火星有太阳系中最大的沙尘暴。</h2>
  <p>它们可以持续数月，并覆盖整个星球。 季节之所以极端，是因为其绕太阳的椭圆形（椭圆形）轨道比太阳系中大多数其他行星都更长。</p>
  <br>
</div>
<input class='read' id='readJupiter' name='jupiterRead' type='radio'>
<label class='closeBig' for='closeJupiter'></label>
<input class='read' id='closeJupiter' name='jupiterRead' type='radio'>
<div class='panel'>
  <h1>木星</h1>
  <p>木星是距离太阳第五近的行星，也是太阳系中体积最大的行星。古人早已认识这颗行星 ，罗马人以主神朱庇特命名这颗行星。古代中国则称木星为岁星，取其绕行天球一周约为12年，与地支相同之故。到西汉时期，《史记‧天官书》作者司马迁从实际观测发现岁星呈青色，与“五行”学说联系在一起，正式把它命名为木星。</p>
  <p>1610年，伽利略发现木星的四个大卫星-艾奥，欧罗巴，木卫三和卡利斯托，即现在的伽利略卫星，木星帮助改变了我们观察宇宙和我们自己的方式。 这是第一次看到天体绕地球以外的物体旋转，这是哥白尼认为地球不是宇宙中心的观点的主要支持。</p>
  <img src='http://hanaleikauaivacation.com/wp-content/uploads/parser/jupiter-landscape-1.jpg'>
  <h2>木星是太阳系中第四明亮的天体。</h2>
  <p>只有太阳，月亮和金星比木星更亮。 它是从地球上肉眼可见的五个行星之一。</p>
  <h2>第一个发现并记录木星的是古巴比伦人。</h2>
  <p>大约在公元前7世纪或8世纪。 木星以罗马众神之王的名字命名。 对希腊人来说，它代表了雷神宙斯。 美索不达米亚人将木星视为马尔杜克神和巴比伦市的守护神。 日耳曼部落将这个星球称为Donar或Thor。</p>
  <h2>木星的一天是所有行星中最短的。</h2>
  <p>木星每9小时55分钟绕轴旋转一次。 由于木星的快速旋转使该行星略微变平，呈扁圆形。</p>
  <h2>木星每11.8个地球年绕太阳公转一次。</h2>
  <p>以地球的角度来看木星的移动，它似乎在天空中缓慢移动，从一个星座移动到另一个星座需要花费数月的时间。</p>
  <br>
</div>
<input class='read' id='readSaturn' name='saturnRead' type='radio'>
<label class='closeBig' for='closeSaturn'></label>
<input class='read' id='closeSaturn' name='saturnRead' type='radio'>
<div class='panel'>
  <h1>土星</h1>
  <p>土星是太阳的第六颗行星，是太阳系中的第二大行星。 土星是克罗努斯（Cronus）的罗马名字，克罗努斯是希腊神话中泰坦的主人。 土星是英语单词“ Saturday”的根源。</p>
  <p>土星是肉眼看不到的距离地球最远的行星，但我们可以通过望远镜可以看到该行星最显著的特征——土星环。 尽管太阳系中的其他气态巨行星——木星，天王星和海王星也有环，但土星的行星环无疑是最不寻常的，其主要成分是冰的微粒和较少数的岩石残骸以及尘土。</p>
  <img src='http://ak0.picdn.net/shutterstock/videos/4049260/thumb/1.jpg'>
  <h2>可以通过肉眼看到土星。</h2>
  <p>土星是太阳系中第五明亮的行星，人类可以通过双筒望远镜或小型望远镜对土星进行轻松研究。</p>
  <h2>土星为古人所熟知，包括巴比伦人和远东观察家。</h2>
  <p>土星以罗马神Saturnus命名，并被希腊人称为Cronus。</p>
  <h2>土星是最平坦的星球。</h2>
  <p>土星的极地直径是其赤道直径的90％，这是由于土星的低密度和快速旋转造成的。 土星每10小时34分钟绕轴旋转一次，有太阳系行星倒数第二短的一天。</p>
  <h2>土星每29.4个地球年绕太阳公转一次。</h2>
  <p>土星在恒星背景下的缓慢运动使得古代亚述人称其为“ Lubadsagush”。 该名称的意思是“最古老的”。</p>
  <br>
</div>
<input class='read' id='readUranus' name='uranusRead' type='radio'>
<label class='closeBig' for='closeUranus'></label>
<input class='read' id='closeUranus' name='uranusRead' type='radio'>
<div class='panel'>
  <h1>天王星</h1>
  <p>天王星是太阳的第七颗行星，也是科学家发现的第一颗行星。 尽管用肉眼可以看到天王星，但由于行星的昏暗和缓慢的轨道，它长期以来被误认为是恒星。 该行星还因其急剧的倾斜而著名，天王星在被发现是行星之前，已经被观测了很多次，但都把它当作恒星看待。</p>
  <p>英国天文学家威廉·赫歇尔（William Herschel）于1781年3月13日用他的望远镜意外地发现了天王星，同时对所有恒星进行了观测，直到它们的亮度都比用肉眼所能看到的要暗10倍。 一颗“恒星”似乎与众不同，一年之内天王星被证明遵循行星轨道。</p>
  <img src='http://www.cosmosup.com/wp-content/uploads/2016/02/Uranus-Facts-About-the-Planet-Uranus-700x325.jpg'>
  <h2>天王星由威廉·赫歇尔爵士于1781年正式发现。</h2>
  <p>天王星太暗了，古人都看不到。 最初，赫歇尔（Herschel）认为这是一颗彗星，但几年后，它被确认为行星。 Herscal试图以乔治三世国王的名字命名为“ Georgian Sidus”。 天王星的名字是由天文学家约翰·博德（Johann Bode）提出的。 这个名字来自古希腊神Ouranos。</p>
  <h2>天王星每17小时14分钟绕轴旋转一次。</h2>
  <p>天王星沿逆行方向旋转，与地球和大多数其他行星的旋转方向相反。</p>
  <h2>天王星每84地球年绕太阳转一圈。</h2>
  <p>在其轨道的某些部分，一个或另一个极点直接指向太阳，并获得约42年的直射阳光。 其余时间他们都在黑暗中。</p>
  <h2>天王星通常被称为“冰巨人”星球。</h2>
  <p>像其他气态巨行星一样，天王星有一个氢气上层，里面掺有氦气。在它的下面是一个冰冷的“地幔”，它围绕着一块岩石和冰芯。 高层大气由水，氨和甲烷冰晶组成，使该行星呈淡蓝色。</p>
  <br>
</div>
<input class='read' id='readNeptune' name='neptuneRead' type='radio'>
<label class='closeBig' for='closeNeptune'></label>
<input class='read' id='closeNeptune' name='neptuneRead' type='radio'>
<div class='panel'>
  <h1>海王星</h1>
  <p>海王星是太阳的第八颗行星。 它是第一个通过数学计算预测其存在的行星，然后在1846年9月23日通过望远镜实际观测到了它。天王星轨道的不规则性导致法国天文学家亚历克西斯·布瓦德（Alexis Bouvard）提出这可能是由来自另一天体的引力导致的。 然后，德国天文学家约翰·加勒（Johann Galle）依靠随后的计算来帮助通过望远镜发现海王星。 此前，天文学家伽利略·伽利莱（Galileo Galilei）对该行星进行了草图绘制，但由于其运动缓慢，他误将其视为恒星。 与天空中其他所有行星一样，这个新世界的名字来源于希腊和罗马神话中的海王星海王星。</p>
  <p>海王星只执行了一次飞行任务-旅行者2号（1989年）-这意味着天文学家已经使用地面望远镜完成了大多数研究。 如今，关于凉爽的蓝色星球仍有许多谜团，例如为何风速如此之快以及为何其磁场被抵消。</p>
  <img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy8Dd14tbXAzh1iz-EJl9tulRwH7Bb-SxX6sXpKFDbqb-NKwpE'>
  <h2>海王星不为古人所知。</h2>
  <p>海王星无法通过肉眼观察，于1846年首次观察到。它的位置是使用数学预测确定的。 它以罗马的海洋神命名。</p>
  <h2>海王星在其轴上旋转得非常快。</h2>
  <p>其赤道云旋转需要18个小时。 这是因为海王星不是固体。</p>
  <h2>海王星是最小的冰巨星。</h2>
  <p>尽管比天王星小，但海王星的质量更大。 在其大气层之下，天王星由氢气，氦气和甲烷气体层组成。 它们包含一层水，氨和甲烷冰。 行星的内芯是由岩石制成的。</p>
  <h2>海王星的气氛由氢气和氦气以及一些甲烷组成。</h2>
  <p>甲烷吸收红光，使行星看起来像是蓝色。 稀薄的高云飘浮在高层大气中。</p>
</div>
<input class='read' id='readPluto' name='plutoRead' type='radio'>
<label class='closeBig' for='closePluto'></label>
<input class='read' id='closePluto' name='plutoRead' type='radio'>
<div class='panel'>
  <h1>冥王星</h1>
  <p>冥王星曾经被认为是距离太阳第九个，也是距离最远的行星，现在已成为太阳系中已知最大的矮行星。 它也是柯伊伯带最大的成员之一，该海带是海王星轨道以外的一个阴影带，据信由数十万个岩石冰冷的物体组成，每个物体的直径超过62英里（100公里），以及1万亿兆或更多的彗星。</p>
  <p>2006年，冥王星被重新归类为矮行星，这一变化被普遍认为是降级。 从那以后，冥王星的行星地位问题引起了科学界和广大公众的争议，并引起了争论。 2017年，一个科学小组（包括“新视野”任务的成员）基于“小于恒星的空间中的圆形物体”提出了新的行星度定义，这将使我们太阳系中的行星数量从8个增加到大约100个 。</p>
  <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/asd.jpeg'>
  <h2>冥王星以希腊黑社会之神的名字命名。</h2>
  <p>这是更知名的Hades的后一个名称，由来自英国牛津的11岁女学生Venetia Burney提出。</p>
  <h2>冥王星在2006年从行星重新分类为矮行星。</h2>
  <p>“行星”有两个主要定义。忽略通常不一致的技术细节，第一个要求天体是否像行星一样运转（例如其轨道和与其他物体的关系），第二个要求天体看起来像行星一样（例如其是否具有行星地质）。冥王星符合第二个定义，但不符合第一个定义。</p>
  <h2>冥王星是由洛厄尔天文台于1930年2月18日发现的。</h2>
  <p>在冥王星被发现到被重新分类为矮行星之间的76年间，它在围绕太阳的轨道的三分之一处完成。</p>
  <h2>冥王星有五个已知的卫星。</h2>
  <p>卫星是Charon（在1978年发现），Hydra和Nix（在2005年都发现），Kerberos最初是P4（在2011年发现）和Styx最初是P5（在2012年发现）官方名称S / 2011（134340）1和S / 2012（ 134340）1。</p>
</div>
<!-- partial -->
  
</body>
</html>