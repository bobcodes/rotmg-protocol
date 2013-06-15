package bemav
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.rotmg.graphics.StarGraphic;
   import flash.display.Graphics;
   import flash.geom.ColorTransform;


   public class Tagoze extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tagoze() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const bytyh:int = 5;

      private static const niqo:int = 4;

      private static const hinybo:int = 15;

      private static const filol:uint = 2434341;

      private static const fefakuf:uint = 8618883;

      private static const qytuneza:uint = 16777215;

      private const stars:Vector.<StarGraphic> = this.reh();

      private const background:Sprite = this.wutas();

      private function reh() : Vector.<StarGraphic> {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<StarGraphic> = this.nuh();
         this.wyg(_loc1_);
         return _loc1_;
      }

      private function nuh() : Vector.<StarGraphic> {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<StarGraphic> = new Vector.<StarGraphic>(bytyh,true);
         var _loc2_:* = 0;
         while(_loc2_<bytyh)
         {
            _loc1_[_loc2_]=new StarGraphic();
            addChild(_loc1_[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }

      private function wyg(param1:Vector.<StarGraphic>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<bytyh)
         {
            param1[_loc2_].x=niqo+param1[0].width*_loc2_;
            param1[_loc2_].y=niqo;
            _loc2_++;
         }
         return;
      }

      private function wutas() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         this.guviqejy(_loc1_.graphics);
         addChildAt(_loc1_,0);
         return _loc1_;
      }

      private function guviqejy(param1:Graphics) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:StarGraphic = this.stars[0];
         var _loc3_:int = _loc2_.width*bytyh+2*niqo;
         var _loc4_:int = _loc2_.height+2*niqo;
         param1.clear();
         param1.beginFill(filol);
         param1.drawRoundRect(0,0,_loc3_,_loc4_,hinybo,hinybo);
         param1.endFill();
         return;
      }

      public function setStars(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<bytyh)
         {
            this.qutesimiq(_loc2_,param1);
            _loc2_++;
         }
         return;
      }

      private function qutesimiq(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:StarGraphic = this.stars[param1];
         var _loc4_:ColorTransform = _loc3_.transform.colorTransform;
         _loc4_.color=param1<param2?qytuneza:fefakuf;
         _loc3_.transform.colorTransform=_loc4_;
         return;
      }
   }

}