package noniq
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.display.Sprite;
   import flash.display.Bitmap;


   public class Kuhizitug extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kuhizitug(param1:int, param2:int, param3:Boolean, param4:uint) {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         super();
         this.width_=param1;
         this.height_=param2;
         this.wybek=param4;
         this.wapupymyk=Math.ceil(this.width_/jedosa);
         this.pyzivym=Math.ceil(this.height_/jedosa);
         this.qapetena=new Vector.<BitmapData>(this.wapupymyk*this.pyzivym,true);
         var _loc5_:* = 0;
         while(_loc5_<this.wapupymyk)
         {
            _loc6_=0;
            while(_loc6_<this.pyzivym)
            {
               _loc7_=Math.min(jedosa,this.width_-_loc5_*jedosa);
               _loc8_=Math.min(jedosa,this.height_-_loc6_*jedosa);
               this.qapetena[_loc5_+_loc6_*this.wapupymyk]=new BitmapData(_loc7_,_loc8_,param3,this.wybek);
               _loc6_++;
            }
            _loc5_++;
         }
         return;
      }

      private static const jedosa:int = 256;

      public var width_:int;

      public var height_:int;

      public var wybek:uint;

      private var wapupymyk:int;

      private var pyzivym:int;

      private var qapetena:Vector.<BitmapData>;

      public function copyTo(param1:BitmapData, param2:Rectangle, param3:Rectangle) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc12_:* = 0;
         var _loc13_:BitmapData = null;
         var _loc14_:Rectangle = null;
         var _loc4_:Number = param3.width/param2.width;
         var _loc5_:Number = param3.height/param2.height;
         var _loc6_:int = int(param3.x/jedosa);
         var _loc7_:int = int(param3.y/jedosa);
         var _loc8_:int = Math.ceil(param3.right/jedosa);
         var _loc9_:int = Math.ceil(param3.bottom/jedosa);
         var _loc10_:Matrix = new Matrix();
         var _loc11_:int = _loc6_;
         while(_loc11_<_loc8_)
         {
            _loc12_=_loc7_;
            while(_loc12_<_loc9_)
            {
               _loc13_=this.qapetena[_loc11_+_loc12_*this.wapupymyk];
               _loc10_.identity();
               _loc10_.scale(_loc4_,_loc5_);
               _loc10_.translate(param3.x-_loc11_*jedosa-param2.x*_loc4_,param3.y-_loc12_*jedosa-param2.x*_loc5_);
               _loc14_=new Rectangle(param3.x-_loc11_*jedosa,param3.y-_loc12_*jedosa,param3.width,param3.height);
               _loc13_.draw(param1,_loc10_,null,null,_loc14_,false);
               _loc12_++;
            }
            _loc11_++;
         }
         return;
      }

      public function ryseqyl(param1:Rectangle, param2:BitmapData, param3:Rectangle) : void {
         var [OFS3]_loc15_:* = [/OFS]false;
         var [OFS5]_loc16_:* = [/OFS]true;
         var [OFS11]_loc13_:* = [/OFS][OFS9]0[/OFS];
         var [OFS16]_loc14_:BitmapData = [/OFS][OFS13]null[/OFS];
         var [OFS26]_loc4_:Number = [/OFS][OFS18]param3[/OFS].[OFS19]width[/OFS][OFS24]/[/OFS][OFS21]param1[/OFS].[OFS22]width[/OFS];
         var [OFS36]_loc5_:Number = [/OFS][OFS28]param3[/OFS].[OFS29]height[/OFS][OFS34]/[/OFS][OFS31]param1[/OFS].[OFS32]height[/OFS];
         var [OFS59]_loc6_:int = [/OFS][OFS38]Math[/OFS].[OFS54]max[/OFS][OFS54]([/OFS][OFS40]0[/OFS][OFS54],[/OFS][OFS51]int[/OFS][OFS51]([/OFS][OFS44]param1[/OFS].[OFS45]x[/OFS][OFS50]/[/OFS][OFS47]jedosa[/OFS][OFS51])[/OFS][OFS54])[/OFS];
         var [OFS82]_loc7_:int = [/OFS][OFS61]Math[/OFS].[OFS77]max[/OFS][OFS77]([/OFS][OFS63]0[/OFS][OFS77],[/OFS][OFS74]int[/OFS][OFS74]([/OFS][OFS67]param1[/OFS].[OFS68]y[/OFS][OFS73]/[/OFS][OFS70]jedosa[/OFS][OFS74])[/OFS][OFS77])[/OFS];
         var [OFS109]_loc8_:int = [/OFS][OFS84]Math[/OFS].[OFS104]min[/OFS][OFS104]([/OFS]this.[OFS87]wapupymyk[/OFS][OFS90]-1[/OFS][OFS104],[/OFS][OFS101]int[/OFS][OFS101]([/OFS][OFS93]param1[/OFS].[OFS94]right[/OFS][OFS100]/[/OFS][OFS97]jedosa[/OFS][OFS101])[/OFS][OFS104])[/OFS];
         var [OFS136]_loc9_:int = [/OFS][OFS111]Math[/OFS].[OFS131]min[/OFS][OFS131]([/OFS]this.[OFS114]pyzivym[/OFS][OFS117]-1[/OFS][OFS131],[/OFS][OFS128]int[/OFS][OFS128]([/OFS][OFS120]param1[/OFS].[OFS121]bottom[/OFS][OFS127]/[/OFS][OFS124]jedosa[/OFS][OFS128])[/OFS][OFS131])[/OFS];
         var [OFS145]_loc10_:Rectangle = [/OFS][OFS140]new [/OFS][OFS140]Rectangle[/OFS][OFS140]([/OFS][OFS140])[/OFS];
         var [OFS154]_loc11_:Matrix = [/OFS][OFS149]new [/OFS][OFS149]Matrix[/OFS][OFS149]([/OFS][OFS149])[/OFS];
         var [OFS159]_loc12_:int = [/OFS][OFS156]_loc6_[/OFS];
         while([OFS277]_loc12_[/OFS][OFS281]<=[/OFS][OFS279]_loc8_[/OFS])
         {
            [OFS169]_loc13_=[/OFS][OFS166]_loc7_[/OFS];
            while([OFS267]_loc13_[/OFS][OFS271]<=[/OFS][OFS269]_loc9_[/OFS])
            {
               [OFS195]_loc14_=[/OFS]this.[OFS177]qapetena[/OFS][[OFS180]_loc12_[/OFS][OFS189]+[/OFS][OFS182]_loc13_[/OFS][OFS188]*[/OFS]this.[OFS185]wapupymyk[/OFS]];
               [OFS197]_loc11_[/OFS].[OFS199]identity[/OFS][OFS199]([/OFS][OFS199])[/OFS];
               [OFS203]_loc11_[/OFS].[OFS239]translate[/OFS][OFS239]([/OFS][OFS205]param3[/OFS].[OFS206]x[/OFS][OFS210]/[/OFS][OFS208]_loc4_[/OFS][OFS214]-[/OFS][OFS211]param1[/OFS].[OFS212]x[/OFS][OFS221]+[/OFS][OFS215]_loc12_[/OFS][OFS220]*[/OFS][OFS217]jedosa[/OFS][OFS239],[/OFS][OFS222]param3[/OFS].[OFS223]y[/OFS][OFS227]/[/OFS][OFS225]_loc5_[/OFS][OFS231]-[/OFS][OFS228]param1[/OFS].[OFS229]y[/OFS][OFS238]+[/OFS][OFS232]_loc13_[/OFS][OFS237]*[/OFS][OFS234]jedosa[/OFS][OFS239])[/OFS];
               [OFS243]_loc11_[/OFS].[OFS249]scale[/OFS][OFS249]([/OFS][OFS245]_loc4_[/OFS][OFS249],[/OFS][OFS247]_loc5_[/OFS][OFS249])[/OFS];
               [OFS253]param2[/OFS].[OFS262]draw[/OFS][OFS262]([/OFS][OFS254]_loc14_[/OFS][OFS262],[/OFS][OFS256]_loc11_[/OFS][OFS262],[/OFS][OFS258]null[/OFS][OFS262],[/OFS][OFS259]null[/OFS][OFS262],[/OFS][OFS260]param3[/OFS][OFS262],[/OFS]false[OFS262])[/OFS];
               _loc13_[OFS265]++[/OFS];
            }
            _loc12_[OFS275]++[/OFS];
         }
         [OFS285]return[/OFS];
      }

      public function fabumib(param1:Rectangle) : void {
         var [OFS3]_loc10_:* = [/OFS]false;
         var [OFS5]_loc11_:* = [/OFS]true;
         var [OFS11]_loc8_:* = [/OFS][OFS9]0[/OFS];
         var [OFS16]_loc9_:BitmapData = [/OFS][OFS13]null[/OFS];
         var [OFS31]_loc2_:int = [/OFS][OFS27]int[/OFS][OFS27]([/OFS][OFS20]param1[/OFS].[OFS21]x[/OFS][OFS26]/[/OFS][OFS23]jedosa[/OFS][OFS27])[/OFS];
         var [OFS45]_loc3_:int = [/OFS][OFS41]int[/OFS][OFS41]([/OFS][OFS34]param1[/OFS].[OFS35]y[/OFS][OFS40]/[/OFS][OFS37]jedosa[/OFS][OFS41])[/OFS];
         var [OFS61]_loc4_:int = [/OFS][OFS46]Math[/OFS].[OFS56]ceil[/OFS][OFS56]([/OFS][OFS48]param1[/OFS].[OFS49]right[/OFS][OFS55]/[/OFS][OFS52]jedosa[/OFS][OFS56])[/OFS];
         var [OFS78]_loc5_:int = [/OFS][OFS63]Math[/OFS].[OFS73]ceil[/OFS][OFS73]([/OFS][OFS65]param1[/OFS].[OFS66]bottom[/OFS][OFS72]/[/OFS][OFS69]jedosa[/OFS][OFS73])[/OFS];
         var [OFS87]_loc6_:Rectangle = [/OFS][OFS82]new [/OFS][OFS82]Rectangle[/OFS][OFS82]([/OFS][OFS82])[/OFS];
         var [OFS91]_loc7_:int = [/OFS][OFS89]_loc2_[/OFS];
         while([OFS212]_loc7_[/OFS][OFS216]<[/OFS][OFS214]_loc4_[/OFS])
         {
            [OFS100]_loc8_=[/OFS][OFS98]_loc3_[/OFS];
            while([OFS202]_loc8_[/OFS][OFS206]<[/OFS][OFS204]_loc5_[/OFS])
            {
               [OFS126]_loc9_=[/OFS]this.[OFS108]qapetena[/OFS][[OFS111]_loc7_[/OFS][OFS120]+[/OFS][OFS113]_loc8_[/OFS][OFS119]*[/OFS]this.[OFS116]wapupymyk[/OFS]];
               [OFS128]_loc6_[/OFS].[OFS140]x[/OFS][OFS140]=[/OFS][OFS130]param1[/OFS].[OFS131]x[/OFS][OFS139]-[/OFS][OFS133]_loc7_[/OFS][OFS138]*[/OFS][OFS135]jedosa[/OFS];
               [OFS142]_loc6_[/OFS].[OFS154]y[/OFS][OFS154]=[/OFS][OFS144]param1[/OFS].[OFS145]y[/OFS][OFS153]-[/OFS][OFS147]_loc8_[/OFS][OFS152]*[/OFS][OFS149]jedosa[/OFS];
               [OFS156]_loc6_[/OFS].[OFS169]right[/OFS][OFS169]=[/OFS][OFS158]param1[/OFS].[OFS159]right[/OFS][OFS168]-[/OFS][OFS162]_loc7_[/OFS][OFS167]*[/OFS][OFS164]jedosa[/OFS];
               [OFS172]_loc6_[/OFS].[OFS185]bottom[/OFS][OFS185]=[/OFS][OFS174]param1[/OFS].[OFS175]bottom[/OFS][OFS184]-[/OFS][OFS178]_loc8_[/OFS][OFS183]*[/OFS][OFS180]jedosa[/OFS];
               [OFS188]_loc9_[/OFS].[OFS196]fillRect[/OFS][OFS196]([/OFS][OFS190]_loc6_[/OFS][OFS196],[/OFS]this.[OFS193]wybek[/OFS][OFS196])[/OFS];
               _loc8_[OFS200]++[/OFS];
            }
            _loc7_[OFS210]++[/OFS];
         }
         [OFS220]return[/OFS];
      }

      public function debeqyto() : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = 0;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:* = 0;
         while(_loc2_<this.wapupymyk)
         {
            _loc3_=0;
            while(_loc3_<this.pyzivym)
            {
               _loc4_=this.qapetena[_loc2_+_loc3_*this.wapupymyk];
               _loc5_=new Bitmap(_loc4_);
               _loc5_.x=_loc2_*jedosa;
               _loc5_.y=_loc3_*jedosa;
               _loc1_.addChild(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }

}