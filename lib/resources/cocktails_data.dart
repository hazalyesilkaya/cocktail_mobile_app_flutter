import '../models/model.dart';

class Diohelper {
  static List<ProductModel> getdata() {
    List<ProductModel> list = [];
    list.add(ProductModel(
        id: 300,
        name: "Peach Bellini",
        img: "assets/images/all_cocktails_img/peach_bellini_cocktails.jpg",
        description: "Alkollü içecek\nTatlı ve mayhoş dengesi olan şeftali Bellini, verandada, havuz kenarında veya bir brunch için misafirlere harmanlamak için harika bir içecek. Aynı zamanda yaz geldiğinde şeftali ihtiyacınızı gidermenin canlandırıcı bir yoludur.\nİpucu: Şeftali püresini önceden hazırlayıp gece boyunca buzdolabında saklayabilir veya 2 aya kadar dondurabilirsiniz.",
        firstStep: "Şeftalileri, çilekleri ve şeftali likörlerini blenderin sürahisine ekleyin. Kapağını sıkıca kapatın ve yüksek hızda pürüzsüz hale gelinceye kadar karıştırın.",
        secondStep: "Şeftali karışımını 6 bardağa paylaştırın. İsterseniz her bardağı daha fazla şeftali veya çilekle süsleyin. Her bardağın yarısını beyaz şarap ile doldurun; karıştırın ve isterseniz daha fazla beyaz şarap ekleyin.",
        ingredient: "450 gr dondurulmuş şeftali,1/4 bardak çilek,Yarım bardak şeftali likörü,1 şişe prosecco veya köpüklü beyaz şarap"));
    list.add(ProductModel(
        id: 301,
        name: "Ranch Water",
        img: "assets/images/all_cocktails_img/ranch_water_cocktails.jpg",
        description: "Alkollü içecek - Tekila\nKolay, lezzetli ve diğer alkollü seçeneklere göre daha az kalorili. Üstelik sıcak bir günde kabarcıklı, narenciye tadında ve çok ferahlatıcı!",
        firstStep: "Bir bardağın yarısını kırılmış buzla doldurun.",
        secondStep: "Üzerine taze limon suyu, tekila ve ardından maden suyu ekleyin. Afiyet olsun.",
        ingredient: "1 yemek kaşığı limon suyu,60 ml tekila,175 ml maden suyu,Kırık buz"));
    list.add(ProductModel(
        id: 302,
        name: "Bee's Knees",
        img: "assets/images/all_cocktails_img/bees_knees_cocktails.jpg",
        description: "Alkollü içecek\nParlak, dengeli ve sadece üç malzemeyle hazırlanan bu kokteyl, haftanın herhangi bir gecesinde bir akşam yemeği partisinde veya happy hour'da bir araya getirilebilecek çok kolay bir bahar kokteylidir. Cin, bal ve limon suyu büyük olasılıkla elinizin altında bulunan mutfak malzemeleridir. Bu mütevazi malzemeler, kokteyl çalkalayıcısında buzla çalkalandığında, mükemmel narenciye tatlılığıyla dengelenmiş, otsu ve taze bir içecek elde edilir!",
        firstStep: "Bal şurubu için:\n1/4 bardak bal ve 1/4 bardak sıcak suyu birleştirip çırpın. Oda sıcaklığına soğuması için bir kenara koyun. Kullanıma hazır olana kadar buzdolabında saklayın.",
        secondStep: "Kokteyl için:\nKokteyl çalkalayıcıda cin, bal şurubu ve limon suyunu buzla birleştirin. Kapağı kapatın ve yaklaşık 10 saniye boyunca kuvvetlice çalkalayın. Soğutulmuş bir kupa bardağa süzün ve limon kıvrımı veya yenilebilir bir çiçekle servis yapın.",
        ingredient: "60 ml cin,30 ml bal şurubu,30 ml limon suyu"));
    list.add(ProductModel(
        id: 303,
        name: "Dark and Stormy",
        img: "assets/images/all_cocktails_img/dark_stormy_cocktails.jpg",
        description: "Alkollü İçecek\nEkşi ve tatlının mükemmel dengesi olan Karanlık ve Fırtınalı Kokteyl, ızgara yaparken elinizin altında bulundurabileceğiniz mükemmel bir içecektir.",
        firstStep: "Uzun bir bardağı buz küpleriyle doldurun.",
        secondStep: "Zencefilli birayı ve limon suyunu ekleyin. Üstüne rom ekleyin. Servis yapmak için bardağa limon dilimi ekleyin.",
        ingredient: "90 ml zencefil birası,15 ml taze limon suyu,60 ml dark(koyu) rom,Servis için limon dilimleri"));
    list.add(ProductModel(
        id: 304,
        name: "Red Sangria",
        img: "assets/images/all_cocktails_img/red_sangria_cocktails.jpg",
        description: "Yapımı kolay ve kalabalığa uygun. Hafif, canlandırıcı ve yazlıktır; ancak sangria'nın en iyi yanı, yılın zamanına ve tercihlerinize göre tamamen özelleştirilebilir olmasıdır. Sangria temelde meyvelerle yapılan bir şarap kokteylidir. Kırmızı, beyaz veya roze şarap kullanabilirsiniz. En çok sevdiğiniz meyveyi ekleyin, biraz tatlandırıcı ekleyin veya gazlı bir çeşitleme için üzerine maden suyu ekleyin.",
        firstStep: "Yarım galonluk bir kapta likör ve ananas suyunu birleştirin ve çok iyi karıştırın.",
        secondStep: "Portakalı ikiye bölün. Portakalın yarısını sürahiye sıkın ve kalan yarısını dilimleyin. Portakal, çilek, elma ve şeftali dilimlerini kabın içine yerleştirin. Üzerine kırmızı şarap ekleyin ve birleştirmek için karıştırın. 8 saat veya gece boyunca soğutun. Her bardağa biraz meyve ekleyerek buz üzerinde servis yapın.",
        ingredient: "Yarım b. brandy veya meyve bazlı likör,470 ml ananas suyu,1 portakal,Yarım bardak dilimlenmiş çilek,Yarım yeşil elma, çekirdeği çıkarılmış ve dilimlenmiş,1 şeftali veya nektarin, çekirdekleri çıkarılmış ve dilimlenmiş,1750 ml şişe kırmızı şarap"));
    list.add(ProductModel(
        id: 305,
        name: "Margarita",
        img: "assets/images/all_cocktails_img/classic_margarita_cocktails.jpg",
        description: "Sıcak bir yaz gününde bu kolay kokteyllerden daha iyi bir şey olamaz. Margaritalar tipik olarak birkaç basit malzemeden oluşur ve bunların çoğuna zaten evinizde sahip olabilirsiniz: Margarita için en iyi tekila, limon, şeker ve triple sec (portakal likörü).",
        firstStep: "Limon suyunu, tekilayı, triple sec'i ve basit şurubu bir sürahide karıştırın.",
        secondStep: "Buz dolu bardaklara dökün ve limon dilimleriyle süsleyin.",
        ingredient: "2 fincan limon suyu,2 fincan silver tekila,1 fincan portakal likörü,1/4 fincan basit şurup"));
    list.add(ProductModel(
        id: 306,
        name: "White Wine Spritzer",
        img: "assets/images/all_cocktails_img/white_spritzer_cocktails.jpg",
        description: "Ortamı serinletmesi, insanların sıvı ihtiyacını karşılaması ve partinin güçlü kalmasını garantileyen en kolay kokteyl tariflerinden biridir! Eğer büyük bir yaz yemeği hazırlığı yapılıyorsa bu içeceği menüye ekleyin!",
        firstStep: "Meyveli buz küplerini hazırlamak için: İki buz tepsisinin çukurlarına dilediğiniz kadar böğürtlen ve çilek ekleyin. Her kuyucuğun dörtte üçü dolana kadar su ekleyin. Katılaşana kadar dondurun, yaklaşık 12 saat.",
        secondStep: "Spritzerleri yapmak için: Meyveli buz küplerini iki şarap bardağına bölün. Şarabı bardaklara paylaştırın, ardından üzerine maden suyunu eşit şekilde dökün. İsterseniz her spritzer'i limon ve nane ile süsleyin.",
        ingredient: "Taze böğürtlen,Dilimlenmiş çilek,1 bardak soğuk beyaz şarap,Yarım bardak maden suyu,Süslemek için limon dilimleri,Süslemek için taze nane dalları"));
    list.add(ProductModel(
        id: 307,
        name: "Tom Collins",
        img: "assets/images/all_cocktails_img/tom_collins_cocktails.jpg",
        description: "Bu karışım, cinlerden gelen otsu bir notayla eşleştirilmiş, hafif bir narenciye tatlılığına sahip bir içecektir. Sadece bir yudumdan sonra favori cin kokteyliniz olacak!",
        firstStep: "Buz küpleriyle dolu bir kokteyl çalkalayıcıya cin, limon suyu ve basit şurubu ekleyin. Kapağı kapatın ve yaklaşık 15 saniye iyice çalkalayın.",
        secondStep: "2 highball veya Collins bardağının üçte birini buzla doldurun. Cin karışımını bardaklara paylaştırın. Üstüne soda ekleyin ve limon dilimleri ve kirazlarla süsleyin.",
        ingredient: "115 ml cin(soğutulmuş),45 ml limon suyu,45 ml basit şurup,Soda,Süslemek için limon dilimi,Süslemek için kiraz"));
    list.add(ProductModel(
        id: 308,
        name: "Mojito",
        img: "assets/images/all_cocktails_img/classic_mojito_cocktails.jpg",
        description: "Klasik mojito tarifi rom, nane, şeker, limon suyu ve sodanın birleşiminden yapılır. Süslü görünebilir, ancak bu kolay kokteyl tarifi evde yapılabilir ve kendinizi tatildeymiş gibi hissetmenizi sağlar!",
        firstStep: "Nane yapraklarını, limon dilimlerini ve şekeri bir kokteyl çalkalayıcıya koyun ve yaklaşık 20 saniye karıştırın. Rom ve buz küplerini ekleyin. Kapağı kapatın ve yaklaşık 10 saniye iyice çalkalayın.",
        secondStep: "Uzun bir bardağın üçte birini buzla doldurun. Mojito karışımını bardağa ekleyin. Üstüne soda ekleyin ve limon dilimleri ve nane dallarıyla süsleyin.",
        ingredient: "6 nane yaprağı,Yarım limon(4'e bölünmüş),1 çay kaşığı toz şeker,60 ml Beyaz Rom,Servis için soda,Misket limonu dilimleri"));
    list.add(ProductModel(
        id: 309,
        name: "Negroni",
        img: "assets/images/all_cocktails_img/negroni_cocktails.jpg",
        description: "En kolay klasik kokteyllerden biri olan Negroni, eşit miktarda cin, kırmızı vermut ve Campari'nin karıştırılıp buz üzerinde portakal kabuğu dokunuşuyla servis edilmesini gerektirir. Negroni kokteylinin İtalya'nın Floransa kentinde ortaya çıktığı ve 'aperitivo' veya akşam yemeğinden önce içilen içecek olarak bilindiği söyleniyor.",
        firstStep: "Cin, vermut ve Campari'yi buzla dolu bir karıştırma bardağında birleştirin. İyice karıştırın.",
        secondStep: "Bir bardağa aktarın. Portakal dilimi ile süsleyebilirsiniz.",
        ingredient: "45 ml cin,45 ml kırmızı vermut,45 ml Campari, Portakal dilimi"));
    list.add(ProductModel(
        id: 310,
        name: "Paloma",
        img: "assets/images/all_cocktails_img/paloma_cocktails.jpg",
        description: "Margarita ve Ranch Water'ın büyük bir hayranıysanız, başka bir lezzetli tekila kokteyli olan Paloma ile tanışmanın zamanı geldi! Bu tarif, biraz taze greyfurt suyu ve greyfurt sodasıyla greyfurt lezzetini ikiye katlıyor! Taze limon suyu, sodanın tatlılığını dengelemek için daha fazla asit eklenmesine yardımcı olur ve bardaktaki bir tutam tuz, tüm tatları tamamlar.",
        firstStep: "Tekila, limon ve greyfurt sularını üç bardağa paylaştırın. Her bardağa bir tutam tuz ekleyin. Dörtte üçünü buzla doldurun, ardından birleştirmek için karıştırın. Üstüne greyfurt sodası ekleyin, ardından bir dilim greyfurt ve bir dilim limonla süsleyin.",
        secondStep: "İpucu: Tuzlu bir kenar için, bir miltar tuzu küçük bir tabağa yayın. Kokteyli yapmadan önce bardakların üst kısımlarını limon dilimleriyle ovalayın ve tuza batırın.",
        ingredient: "175 ml tekila,45 ml taze limon suyu,175 ml taze greyfurt suyu,Bir tutam tuz,Servis için kırılmış buz,350 ml greyfurt sodası,3 dilim taze greyfurt,3 limon dilimi"));
    list.add(ProductModel(
        id: 311,
        name: "Sidecar Cocktail",
        img: "assets/images/all_cocktails_img/sidecar_cocktails.jpg",
        description: "Konyak, portakal likörü ve limon suyuyla yapılan klasik sepet, asla modası geçmeyecek zarif ve kolay bir kokteyldir. En parlak ve en canlandırıcı sonuçlar için taze limon suyu çok önemlidir. Limonlu bir dokunuşla süslemek istiyorsanız, limonun suyunu sıkmadan önce kabuğunu rendeleyin.\n\nBu tarif beş dakika veya daha kısa sürede bir araya gelir ve iki kişiliktir, ancak aynı zamanda bir parti için mükemmel bir toplu kokteyl de yapar. Tarifi iki, üç veya dört katına çıkarabilir ve her şeyi bir sürahide karıştırabilirsiniz. Buzdolabında saklayın ve servis etmeden hemen önce buzun üzerinde çalkalayıp bardaklara süzün.",
        firstStep: "Toz şekeri bir tabağa koyun. Bardakların sadece kenarlarını suya, ardından şekere batırın.",
        secondStep: "Kokteyl çalkalayıcısında konyak, portakal likörü, limon suyu ve buzu birleştirin. İyice soğuması için 10-20 saniye çalkalayın, ardından iki martini veya kupa bardağına süzün. Portakal veya limon dokunuşuyla süsleyin.",
        ingredient: "1/4 fincan toz şeker,115 ml konyak,60 ml portakal likörü,45 ml limon suyu,Portakal veya limon parçası"));
    list.add(ProductModel(
        id: 312,
        name: "Bloody Mary",
        img: "assets/images/all_cocktails_img/classic_bloody_mary_cocktails.jpg",
        description: "Bloody Mary'ye benzeyen başka bir brunch kokteyli olmadığını söylemek yanlış olmaz. Klasik içecek, özellikle tüm garnitürler söz konusu olduğunda, hafta sonu brunch'ının vazgeçilmezidir! Tarifimiz doğranmış turşu, kiraz domates ve yeşil zeytin gerektiriyor, ancak daha iddialı bir karışım uzmanı pastırma, ızgara karides ve hatta peynir parçaları bile ekleyebilir.",
        firstStep: "Votka, domates suyu, limon suyu, Worcestershire sosu, acı sos (kullanılıyorsa), yaban turpu, kereviz tuzu ve karabiberi uzun bir bardakta birleştirin. Birleştirmek için iyice karıştırın. Bardağın geri kalanını buzla doldurun ve tekrar karıştırın.",
        secondStep: "Dilerseniz bardakta bir parça kereviz ve pastırma, bir şiş doğranmış turşu, çeri domates ve yeşil zeytin ile servis yapın.",
        ingredient: "45 ml votka,3/4 bardak domates suyu,2 yemek kaşığı limon suyu,2 çay kaşığı Worcestershire sos,2 tutam acı sos (isteğe bağlı),1/4 çay kaşığı hazırlanmış yaban turpu,1 tutam kereviz tuzu,1 tutam karabiber,Yapraklı kereviz sapları,Pişmiş pastırma,Dilimlenmiş limon,Doğranmış turşu,Çeri domates ve yeşil zeytin"));
    list.add(ProductModel(
        id: 313,
        name: "Strawberry Daiquiri",
        img: "assets/images/all_cocktails_img/strawberry_daiquiri_cocktails.jpg",
        description: "Kavurucu bir günde hangi kokteyli yapacağınızı mı merak ediyorsunuz? Meyveli ve canlı çilekli daiquiri'den başka bir yere bakmayın. Bu kokteylin yalnızca 4 malzemesi var: çilek, rom, limon suyu ve şeker. Gayet Basit!",
        firstStep: "Taze çilekleri soyup dilimleyin. Taze çilekleri orta boy bir kaseye yerleştirin; şekeri ve limon suyunu karıştırın. Ara sıra karıştırarak 30 dakika boyunca ağzı kapalı olarak bekletin.",
        secondStep: "Bir karıştırıcıda çilek karışımını, romu ve dondurulmuş çilekleri birleştirin. Blenderi düşük hızda çalıştırın, ardından yüksek hıza yükseltin. Pürüzsüz olana kadar 20-30 saniye karıştırın. Daiquiris'i bardaklara dökün ve limon çarklarıyla süsleyin.",
        ingredient: "230 gr taze çilek,Yarım fincan şeker,1/4 fincan taze limon suyu,1.5 fincan beyaz rom,680 gr dondurulmuş çilek,Süslemek için lime"));
    list.add(ProductModel(
        id: 314,
        name: "French 75 Cocktail",
        img: "assets/images/all_cocktails_img/french_seventy_five_cocktails.jpg",
        description: "Yılbaşı Gecesi yemeğinizin yanında servis edilecek mükemmel kokteyli mi arıyorsunuz? Yılbaşı partisi planınıza dahil edilmesi gereken klasik bir kokteyl olan French 75'ten başka bir yere bakmayın.\n\nFrench 75 kokteyli, cinlerden gelen otsu notalar, limon suyundan gelen hoş bir narenciye ekşiliği ve basit şuruptan gelen bir miktar tatlılık ile iyi dengelenmiş bir içecektir. Şampanya, prosecco veya cava gibi köpüklü şaraplar içeceğe ferahlatıcı bir tat verir.",
        firstStep: "Bir kokteyl çalkalayıcıda cin, limon suyu ve basit şurubu birleştirin. Birkaç küp buz ekleyin, ardından kapağını kapatın ve iyice soğuyuncaya kadar 10-20 saniye çalkalayın.",
        secondStep: "Karışımı süzün ve iki şampanya kadehine eşit olarak bölün. Üzerine soğutulmuş şampanyayı dökün, limonla süsleyin ve hemen servis yapın.",
        ingredient: "90 ml cin,60 ml taze limon suyu,30 ml basit şurup,Çalkalamak için buz,Şampanya gibi köpüklü şaraplar,Limon kıvrımları"));
    list.add(ProductModel(
        id: 315,
        name: "Mint Julep",
        img: "assets/images/all_cocktails_img/mint_julep_cocktails.jpg",
        description: "Bu kolay kokteyl tarifi bourbon viski seven herkesin hoşuna gidecek. Sadece üç malzemeye ihtiyaç duyar (eğer buzu saymazsanız): nane, basit şurup ve bourbon viski!",
        firstStep: "Bir nane dalının yapraklarını çıkarın ve basit şurupla birlikte bir nane şerbeti bardağına veya kaya bardağına koyun. Tahta bir karıştırıcı kullanarak, nane yapraklarının aromasını ve tadını çıkarmak için yaklaşık 20 saniye boyunca hafifçe karıştırın.",
        secondStep: "Burbonu bardağa ekleyin, ardından kırılmış buzla doldurun. Camın kenarları buzlanana kadar yaklaşık 20 saniye boyunca birleştirmek için iyice karıştırın. Kalan üç dal naneyi bir araya toplayın ve elinizin üstüne vurun. Bardağınızın kenarında bir nane buketi oluşturmak için naneyi buza yapıştırın.",
        ingredient: "4 dal taze nane,15 ml basit şurup,75 ml Bourbon viski,Kırık buz"));
    list.add(ProductModel(
        id: 316,
        name: "Strawberry Margarita",
        img: "assets/images/all_cocktails_img/strawberry_margaritas_cocktails.jpg",
        description: "Bu muhteşem margaritayı hazırlamak için biraz taze çilek karıştırın. Dinlendirici bir yaz günü için harikadır.",
        firstStep: "Taze çilekleri, şekeri ve limon suyunu bir karıştırıcıda pürüzsüz hale gelinceye kadar 2 ila 3 dakika püre haline getirin. İnce gözenekli bir elekten geçirerek büyük bir ölçüm kabına veya sürahiye süzün. Tekila ve portakal likörünü karıştırın ve servis yapmaya hazır olana kadar buzdolabında saklayın.",
        secondStep: "Servis yapmadan hemen önce, dondurularak kurutulmuş çilekleri, tekrar kapatılabilir bir plastik torba içinde oklava veya ağır bir tava kullanarak ezin. Ezilmiş çilekleri küçük bir kapta tuzla karıştırın ve bir tabağa dökün. Bir bardağın kenarını ıslatmak için limon dilimi kullanın, ardından kenarını hazırladığınız çilek tuzuna batırın. Bardağı buzla doldurun ve margaritayı dökün. Bardağı lime ile süsleyin.",
        ingredient: "0.8 kg çilek(4 bardak kadar),Yarım fincan şeker,3 limonun suyu,Garnitür olarak limon dilimleri,2 fincan tekila,Yarım fincan Portakal Likörü,1 fincan donmuş çilek,1/4 fincan tuz"));
    list.add(ProductModel(
        id: 317,
        name: "Watermelon Sangria",
        img: "assets/images/all_cocktails_img/watermelon_sangria_cocktails.jpg",
        description: "Kolay, güzel ve yaz aylarına uygun.\n\nNot: Bu büyük miktardadır ve 18-24 kişiye hizmet eder! Kolayca ikiye bölünebilir.Şampanya yerine köpüklü şarap veya moscato da kullanılabilir.",
        firstStep: "Servis yapmadan birkaç saat önce, karpuzun dış kısmından 2-3 inçlik dilimler dilimleyin ve bol miktarda kırmızı meyvenin eklendiğinden emin olun. Kabuğu 2 inçlik şeritler halinde dilimleyin, ardından büyük parçalar oluşturmak için şeritleri diğer yönde kesin. Parçaları büyük bir fıçıya ekleyin ve gül şarabını ekleyin.",
        secondStep: "Kazanın kapağını kapatın ve en az 6 saat, mümkünse daha fazla soğuması için buzdolabına koyun! Servis yapmadan hemen önce soğutulmuş Şampanyayı, köpüklü şarabı veya moscato'yu karıştırın.",
        ingredient: "1 orta boy çekirdeksiz karpuz,6 şişe (750 ml'lik) roze şarap,1 şişe (750 ml'lik) şampanya"));
    list.add(ProductModel(
        id: 318,
        name: "Strawberry Sangria",
        img: "assets/images/all_cocktails_img/strawberry_sangria_cocktails.jpg",
        description: "Meyveli ve tatlıdır.",
        firstStep: "Büyük bir sürahide rose şarap, votka, çilek, üzüm, şeker ve 1/2 bardak suyu karıştırın. 12 saat boyunca buzdolabında saklayın.",
        secondStep: "Servis yapmadan hemen önce köpüklü şarabı dökün. Buz ile servis yapın.",
        ingredient: "1 şişe roze şarap,1 fincan portakal aromalı votka,2 fincan çilek(doğranmış),Yarım fincan kırmızı üzüm,Yarım fincan şeker,1 şişe köpüklü şarap"));
    list.add(ProductModel(
        id: 319,
        name: "Mulled Cider",
        img: "assets/images/all_cocktails_img/mulled_cider_cocktails.jpg",
        description: "Bu sıcak elma şarabı son derece rahat bir kış içeceğidir.",
        firstStep: "Elma şarabını büyük bir tencereye dökün ve orta-yüksek ateşte ayarlayın. Elmayı, portakal kabuğunu ve tarçın çubuklarını ekleyin. Şekeri ekleyin ve karıştırarak erimesini sağlayın. Düşük kaynama noktasına getirin, ardından ısıyı düşük seviyeye indirin ve 45 dakika ila 1 saat pişirin.",
        secondStep: "Burbonu ekleyin ve 10 ila 15 dakika daha pişirin. Bardaklara paylaştırıp sıcak olarak servis yapın.",
        ingredient: "1850 ml elma şarabı,1 elma(doğranmış),3 tarçın çubuk,1/4 fincan şeker,Yarım fincan bourbon viski"));
    list.add(ProductModel(
        id: 320,
        name: "Pomegranate Sparklers",
        img: "assets/images/all_cocktails_img/pomegranate_sparklers.jpg",
        description: "Bu nar kokteyli harika kış içecekleri için olsa da, nar severlerin yıl boyunca yudumlayabileceğini düşünüyoruz.",
        firstStep: "Basit şurup kullanıyorsanız: eşit miktarda şeker ve suyu küçük bir tencerede birleştirin. Şeker eriyene kadar kaynatıp ocaktan alın. Tamamen soğutun.",
        secondStep: "Bir kokteyl karıştırıcısında nar suyu, limon suyu, votka ve basit şurubu birleştirin. 4-6 buz küpü ekleyin ve yaklaşık 20 saniye çalkalayın. Meyve suyunu kokteyl bardaklarına süzün ve üzerine soda veya maden suyu ekleyin. Nar taneleri ve limon dilimleri ile süsleyin.",
        ingredient: "2 bardak nar suyu,1 bardak limon suyu,2 bardak votka (veya tadı),Basit şurup (isteğe bağlı),Soda,Nar taneleri,Misket limonu dilimleri"));
    list.add(ProductModel(
        id: 321,
        name: "",
        img: "assets/images/all_cocktails_img/classic_mojito_cocktails.jpg",
        description: "",
        firstStep: "",
        secondStep: "",
        ingredient: ""));

    // list.add(ProductModel(
    //     id: 309,
    //     name: "Moscow Mule",
    //     img: "assets/images/home_horizontalList_img/moscow_mule.jpg",
    //     description: "Alkollü içecek - Votka",
    //     firstStep: "Lime bulamazsak limon da olur ancak lime kadar keskin ve ekşi bir aroma sağlamaz 4 parçaya böldüğümüz yarım lime’ı kabuklarına zarar vermeden narince eziyoruz.",
    //     secondStep: "Votka ve zencefilli gazozu ekleyin. Kırık buzlarımızı bardağımıza tepeleme şekilde ekleyebilirsiniz ve son olarak sodamızı ekleyebiliriz.",
    //     ingredient: "60 ml Votka,½ Lime,40 ml zencefilli gazoz,50 ml Soda"),);
    // list.add( ProductModel(
    //     id: 310,
    //     name: "Mai Tai",
    //     img: "assets/images/home_horizontalList_img/mai_tai.jpg",
    //     description: "Alkollü içecek - Rom",
    //     firstStep: "Bir shaker'a ananas suyu, portakal suyu, baharatlı rom, hindistan cevizi romu ve nar şurubu ekleyin. ",
    //     secondStep: "Kuvvetlice çalkalayın ve buzla dolu bir bardağa süzün. Servis yapın ve tadını çıkarın.",
    //     ingredient: "1 bardak buz küpleri,88 ml ananas suyu,60 ml portakal suyu,45 ml jigger baharatlı rom,45 ml jigger hindistan cevizi aromalı rom,1 çay kaşığı grenadin şurubu"),);
    // list.add(ProductModel(
    //     id: 311,
    //     name: "Pina Colada",
    //     img: "assets/images/home_horizontalList_img/pina_colada.jpg",
    //     description: "Alkollü içecek - Rom",
    //     firstStep: "Bir blender içine beyaz romu, ananas suyunu ve hindistancevizi kremasını ekleyin. Üzerine rendelenmiş buz ekleyin.Tüm malzemeleri iyice karıştırmak için blender'ı birkaç saniye çalıştırın. Karışımın pürüzsüz ve kremamsı bir kıvama gelmesi gerekiyor.",
    //     secondStep: "Hazırladığınız Piña Colada'yı bir kokteyl bardağına veya ananas kabuğuna dökün. İsteğe bağlı olarak bir ananas dilimi veya maraschino kirazı ile süsleyebilirsiniz. Soğuk olarak servis edin ve keyifle içmeye başlayın.",
    //     ingredient: "60 ml beyaz rom,120 ml ananas suyu,60 ml hindistancevizi kreması,1 su bardağı dolusu rendelenmiş buz,Ananas dilimi (isteğe bağlı),Maraschino kirazı (isteğe bağlı)"));
    // list.add(ProductModel(
    //     id: 312,
    //     name: "Old Fashioned",
    //     img: "assets/images/home_horizontalList_img/old_fashioned.jpg",
    //     description: "Alkollü içecek - Viski",
    //     firstStep: "Bir miktar buz küpünü bir karıştırma kabına koyun. Üzerine şeker küpünü veya şeker şurubunu, angostura bitter'ı ve viskiyi ekleyin. Karışımı karıştırarak şekerin erimesini sağlayın.",
    //     secondStep: "Birkaç buz küpü ile bir rocks (düşük balon) bardağına süzün. Bir portakal kabuğu dilimini bardağın kenarına süslemek için kullanabilirsiniz.",
    //     ingredient: "60 ml bourbon veya rye viskisi,1 adet küp şeker veya şeker şurubu,2-3 damla Angostura bitter,Birkaç buz küpü,Portakal kabuğu (isteğe bağlı)"));
    return list;
  }
}
