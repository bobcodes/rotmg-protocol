package sudiba
{
   import flash.display.Sprite;
   import cerywij.Hoheje;
   import cerywij.Zyze;
   import com.company.assembleegameclient.map.Qawosiwi;


   public class Ralybyzy extends Sprite
   {
      public function Ralybyzy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private const tecahe:Object = {};

      private const dyfobabu:Object = {};

      public function addSpeechBalloon(param1:Lyrawo) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = param1.go_.objectId_;
         var _loc3_:Lyrawo = this.tecahe[_loc2_];
         if((_loc3_)&&(contains(_loc3_)))
         {
            removeChild(_loc3_);
         }
         this.tecahe[_loc2_]=param1;
         addChild(param1);
         return;
      }

      public function addStatusText(param1:Fozinomu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         return;
      }

      public function addQueuedText(param1:Hoheje) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = param1.go_.objectId_;
         var _loc3_:Zyze = this.dyfobabu[_loc2_]=(this.dyfobabu[_loc2_])||(this.zuhapyr());
         _loc3_.append(param1);
         return;
      }

      private function zuhapyr() : Zyze {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zyze = new Zyze();
         _loc1_.target=this;
         return _loc1_;
      }

      public function draw(param1:Qawosiwi, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Pidub = null;
         var _loc3_:* = 0;
         while(_loc3_<numChildren)
         {
            _loc4_=getChildAt(_loc3_) as Pidub;
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