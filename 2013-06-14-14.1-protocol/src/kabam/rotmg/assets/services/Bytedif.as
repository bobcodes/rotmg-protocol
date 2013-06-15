package kabam.rotmg.assets.services
{
   import com.company.assembleegameclient.util.Jiqefatok;
   import kabam.rotmg.assets.model.Fip;
   import com.company.assembleegameclient.util.Hekisona;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.BitmapUtil;
   import kabam.rotmg.assets.model.Animation;
   import com.company.assembleegameclient.util.Kebinuhi;


   public class Bytedif extends Object
   {
      public function Bytedif() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var texture1:int;

      private var texture2:int;

      private var size:int;

      public function koqinal(param1:Fip) : Jiqefatok {
         return Hekisona.woseku(param1.file,param1.index);
      }

      public function makeIcon(param1:Fip, param2:int=100, param3:int=0, param4:int=0) : BitmapData {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.texture1=param3;
         this.texture2=param4;
         this.size=param2;
         var _loc5_:Jiqefatok = this.koqinal(param1);
         var _loc6_:BitmapData = this.jacenedop(_loc5_,Jiqefatok.radev,0);
         _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,0);
         _loc6_=BitmapUtil.kodopomid(_loc6_,6,6,_loc6_.width-12,_loc6_.height-6);
         return _loc6_;
      }

      public function jet(param1:Fip, param2:int=100, param3:int=0, param4:int=0) : Animation {
         var _loc9_:* = false;
         var _loc10_:* = true;
         this.texture1=param3;
         this.texture2=param4;
         this.size=param2;
         var _loc5_:Jiqefatok = this.koqinal(param1);
         var _loc6_:BitmapData = this.jacenedop(_loc5_,Jiqefatok.dywala,0.5);
         _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,0);
         var _loc7_:BitmapData = this.jacenedop(_loc5_,Jiqefatok.dywala,0);
         _loc7_=TextureRedrawer.outlineGlow(_loc7_,0,0);
         var _loc8_:Animation = new Animation();
         _loc8_.tila(_loc6_,_loc7_);
         return _loc8_;
      }

      private function jacenedop(param1:Jiqefatok, param2:int, param3:Number) : BitmapData {
         var _loc4_:Kebinuhi = param1.imageFromDir(Jiqefatok.RIGHT,param2,param3);
         return TextureRedrawer.resize(_loc4_.image_,_loc4_.mask_,this.size,false,this.texture1,this.texture2);
      }
   }

}