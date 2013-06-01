package gyqadewa
{
[CLASS229]   import supozuti.Rupat;
   import leselo.Account;
   import __AS3__.vec.Vector;


   public class Hod extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hod() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const COUNT:int = 3;

      public var update:Rupat;

      public var account:Account;

      public var news:Vector.<Jycomynig>;

      public function tidib() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.news=new Vector.<Jycomynig>(COUNT,true);
         var _loc1_:* = 0;
         while(_loc1_<COUNT)
         {
            this.news[_loc1_]=new Dikuca(_loc1_);
            _loc1_++;
         }
         return;
      }

      public function momyheny(param1:Vector.<Jycomynig>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tidib();
         this.motu(param1);
         this.update.dispatch(this.news);
         return;
      }

      public function rusetumu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.news[0]==null)&&!(this.news[1]==null)&&!(this.news[2]==null);
      }

      private function motu(param1:Vector.<Jycomynig>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Jycomynig = null;
         for each (_loc2_ in param1)
         {
            if((this.jok(_loc2_))&&(this.mumytuzyti(_loc2_)))
            {
               this.neziquw(_loc2_);
            }
         }
         return;
      }

      private function neziquw(param1:Jycomynig) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = param1.slot-1;
         if(this.news[_loc2_])
         {
            param1=this.lufada(this.news[_loc2_],param1);
         }
         this.news[_loc2_]=param1;
         return;
      }

      private function lufada(param1:Jycomynig, param2:Jycomynig) : Jycomynig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1.priority<param2.priority?param1:param2;
      }

      private function jok(param1:Jycomynig) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = new Date().getTime();
         return param1.jymoto<_loc2_&&_loc2_<param1.cubegiryf;
      }

      private function mumytuzyti(param1:Jycomynig) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = this.account.myqem();
         return !(param1.jiky.indexOf(_loc2_)==-1);
      }
   }
[/CLASS]
}