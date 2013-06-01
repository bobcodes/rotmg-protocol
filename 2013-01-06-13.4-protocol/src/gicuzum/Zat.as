package gicuzum
{
[CLASS778]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import com.company.rotmg.graphics.StarGraphic;
   import flash.display.Graphics;
   import flash.geom.ColorTransform;


   public class Zat extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zat() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const quli:int = 5;

      private static const batusow:int = 4;

      private static const myvu:int = 15;

      private static const nasapap:uint = 2434341;

      private static const vabylut:uint = 8618883;

      private static const myhuve:uint = 16777215;

      private const stars:Vector.<StarGraphic> = this.potozip();

      private const background:Sprite = this.fawug();

      private function potozip() : Vector.<StarGraphic> {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<StarGraphic> = this.nogohijug();
         this.bili(_loc1_);
         return _loc1_;
      }

      private function nogohijug() : Vector.<StarGraphic> {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<StarGraphic> = new Vector.<StarGraphic>(quli,true);
         var _loc2_:* = 0;
         while(_loc2_<quli)
         {
            _loc1_[_loc2_]=new StarGraphic();
            addChild(_loc1_[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }

      private function bili(param1:Vector.<StarGraphic>) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<quli)
         {
            param1[_loc2_].x=batusow+param1[0].width*_loc2_;
            param1[_loc2_].y=batusow;
            _loc2_++;
         }
         return;
      }

      private function fawug() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         this.qafu(_loc1_.graphics);
         addChildAt(_loc1_,0);
         return _loc1_;
      }

      private function qafu(param1:Graphics) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:StarGraphic = this.stars[0];
         var _loc3_:int = _loc2_.width*quli+2*batusow;
         var _loc4_:int = _loc2_.height+2*batusow;
         param1.clear();
         param1.beginFill(nasapap);
         param1.drawRoundRect(0,0,_loc3_,_loc4_,myvu,myvu);
         param1.endFill();
         return;
      }

      public function setStars(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<quli)
         {
            this.zyhyjajaf(_loc2_,param1);
            _loc2_++;
         }
         return;
      }

      private function zyhyjajaf(param1:int, param2:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:StarGraphic = this.stars[param1];
         var _loc4_:ColorTransform = _loc3_.transform.colorTransform;
         _loc4_.color=param1<param2?myhuve:vabylut;
         _loc3_.transform.colorTransform=_loc4_;
         return;
      }
   }
[/CLASS]
}