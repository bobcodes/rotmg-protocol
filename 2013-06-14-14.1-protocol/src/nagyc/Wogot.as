package nagyc
{
   import mebug.Pituhynav;
   import pugem.Account;
   import __AS3__.vec.Vector;


   public class Wogot extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wogot() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const COUNT:int = 3;

      public var update:Pituhynav;

      public var account:Account;

      public var news:Vector.<Jyt>;

      public function civocipag() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.news=new Vector.<Jyt>(COUNT,true);
         var _loc1_:* = 0;
         while(_loc1_<COUNT)
         {
            this.news[_loc1_]=new Paf(_loc1_);
            _loc1_++;
         }
         return;
      }

      public function melofafek(param1:Vector.<Jyt>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.civocipag();
         this.wuhiw(param1);
         this.update.dispatch(this.news);
         return;
      }

      public function qunodifeg() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.news[0]==null)&&!(this.news[1]==null)&&!(this.news[2]==null);
      }

      private function wuhiw(param1:Vector.<Jyt>) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Jyt = null;
         for each (_loc2_ in param1)
         {
            if((this.hoqakesib(_loc2_))&&(this.wukygafi(_loc2_)))
            {
               this.degy(_loc2_);
            }
         }
         return;
      }

      private function degy(param1:Jyt) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = param1.slot-1;
         if(this.news[_loc2_])
         {
            param1=this.hopy(this.news[_loc2_],param1);
         }
         this.news[_loc2_]=param1;
         return;
      }

      private function hopy(param1:Jyt, param2:Jyt) : Jyt {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1.priority<param2.priority?param1:param2;
      }

      private function hoqakesib(param1:Jyt) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = new Date().getTime();
         return param1.bolyjo<_loc2_&&_loc2_<param1.meliwygy;
      }

      private function wukygafi(param1:Jyt) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.account.cug();
         return !(param1.rihedu.indexOf(_loc2_)==-1);
      }
   }

}