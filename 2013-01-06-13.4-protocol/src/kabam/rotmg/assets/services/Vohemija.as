package kabam.rotmg.assets.services
{
[CLASS115]   import com.company.assembleegameclient.util.Huroj;
   import kabam.rotmg.assets.model.Kybepujyf;
   import com.company.assembleegameclient.util.Pecipaham;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.BitmapUtil;
   import kabam.rotmg.assets.model.Animation;
   import com.company.assembleegameclient.util.Gejugut;


   public class Vohemija extends Object
   {
      public function Vohemija() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var texture1:int;

      private var texture2:int;

      private var size:int;

      public function wivyh(param1:Kybepujyf) : Huroj {
         return Pecipaham.jujagikan(param1.file,param1.index);
      }

      public function makeIcon(param1:Kybepujyf, param2:int=100, param3:int=0, param4:int=0) : BitmapData {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.texture1=param3;
         this.texture2=param4;
         this.size=param2;
         var _loc5_:Huroj = this.wivyh(param1);
         var _loc6_:BitmapData = this.rorasomi(_loc5_,Huroj.wyqel,0);
         _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,0);
         _loc6_=BitmapUtil.wukofy(_loc6_,6,6,_loc6_.width-12,_loc6_.height-6);
         return _loc6_;
      }

      public function zefis(param1:Kybepujyf, param2:int=100, param3:int=0, param4:int=0) : Animation {
         var _loc9_:* = true;
         var _loc10_:* = false;
         this.texture1=param3;
         this.texture2=param4;
         this.size=param2;
         var _loc5_:Huroj = this.wivyh(param1);
         var _loc6_:BitmapData = this.rorasomi(_loc5_,Huroj.rezafi,0.5);
         _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,0);
         var _loc7_:BitmapData = this.rorasomi(_loc5_,Huroj.rezafi,0);
         _loc7_=TextureRedrawer.outlineGlow(_loc7_,0,0);
         var _loc8_:Animation = new Animation();
         _loc8_.hanyzuca(_loc6_,_loc7_);
         return _loc8_;
      }

      private function rorasomi(param1:Huroj, param2:int, param3:Number) : BitmapData {
         var _loc4_:Gejugut = param1.imageFromDir(Huroj.RIGHT,param2,param3);
         return TextureRedrawer.resize(_loc4_.image_,_loc4_.mask_,this.size,false,this.texture1,this.texture2);
      }
   }
[/CLASS]
}