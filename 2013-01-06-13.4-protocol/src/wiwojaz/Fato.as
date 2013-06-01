package wiwojaz
{
[CLASS512]   import flash.display.Sprite;
   import dugahymu.Bisu;
   import dugahymu.Tasyjujul;
   import com.company.assembleegameclient.map.Fot;


   public class Fato extends Sprite
   {
      public function Fato() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private const vypijeva:Object = {};

      private const hecijaju:Object = {};

      public function addSpeechBalloon(param1:Sisofil) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = param1.go_.objectId_;
         var _loc3_:Sisofil = this.vypijeva[_loc2_];
         if((_loc3_)&&(contains(_loc3_)))
         {
            removeChild(_loc3_);
         }
         this.vypijeva[_loc2_]=param1;
         addChild(param1);
         return;
      }

      public function addStatusText(param1:Hymefit) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         return;
      }

      public function addQueuedText(param1:Bisu) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = param1.go_.objectId_;
         var _loc3_:Tasyjujul = this.hecijaju[_loc2_]=(this.hecijaju[_loc2_])||(this.fucobib());
         _loc3_.append(param1);
         return;
      }

      private function fucobib() : Tasyjujul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tasyjujul = new Tasyjujul();
         _loc1_.target=this;
         return _loc1_;
      }

      public function draw(param1:Fot, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Husuwuj = null;
         var _loc3_:* = 0;
         while(_loc3_<numChildren)
         {
            _loc4_=getChildAt(_loc3_) as Husuwuj;
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
[/CLASS]
}