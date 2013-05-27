package wyrovu
{
   import flash.display.Sprite;
   import qefinah.Vujesewo;
   import qefinah.Zur;
   import com.company.assembleegameclient.map.Wypyj;


   public class Tivehy extends Sprite
   {
      public function Tivehy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private const zewama:Object = {};

      private const hir:Object = {};

      public function addSpeechBalloon(param1:Tyjo) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:int = param1.go_.objectId_;
         var _loc3_:Tyjo = this.zewama[_loc2_];
         if((_loc3_)&&(contains(_loc3_)))
         {
            removeChild(_loc3_);
         }
         this.zewama[_loc2_]=param1;
         addChild(param1);
         return;
      }

      public function addStatusText(param1:Cici) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         return;
      }

      public function addQueuedText(param1:Vujesewo) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = param1.go_.objectId_;
         var _loc3_:Zur = this.hir[_loc2_]=(this.hir[_loc2_])||(this.hynyb());
         _loc3_.append(param1);
         return;
      }

      private function hynyb() : Zur {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zur = new Zur();
         _loc1_.target=this;
         return _loc1_;
      }

      public function draw(param1:Wypyj, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Pomuk = null;
         var _loc3_:* = 0;
         while(_loc3_<numChildren)
         {
            _loc4_=getChildAt(_loc3_) as Pomuk;
            if(!_loc4_||(_loc4_.draw(param1,param2)))
            {
               _loc3_++;
            }
            else
            {
               _loc4_.dispose();
            }
         }
         return;
      }
   }

}