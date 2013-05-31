package lijite
{
   import rejukohub.Nemygyq;
   import aaa.rotmg.account.Account;
   import __AS3__.vec.Vector;


   public class Sapes extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sapes() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const COUNT:int = 3;

      public var update:Nemygyq;

      public var account:Account;

      public var news:Vector.<Nyzena>;

      public function bewupan() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.news=new Vector.<Nyzena>(COUNT,true);
         var _loc1_:* = 0;
         while(_loc1_<COUNT)
         {
            this.news[_loc1_]=new Jivac(_loc1_);
            _loc1_++;
         }
         return;
      }

      public function coc(param1:Vector.<Nyzena>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bewupan();
         this.jilofuhy(param1);
         this.update.dispatch(this.news);
         return;
      }

      public function wutojowoj() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.news[0]==null)&&!(this.news[1]==null)&&!(this.news[2]==null);
      }

      private function jilofuhy(param1:Vector.<Nyzena>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Nyzena = null;
         for each (_loc2_ in param1)
         {
            if((this.jiwis(_loc2_))&&(this.lezo(_loc2_)))
            {
               this.hogurivem(_loc2_);
            }
         }
         return;
      }

      private function hogurivem(param1:Nyzena) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = param1.slot-1;
         if(this.news[_loc2_])
         {
            param1=this.rofihybef(this.news[_loc2_],param1);
         }
         this.news[_loc2_]=param1;
         return;
      }

      private function rofihybef(param1:Nyzena, param2:Nyzena) : Nyzena {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1.priority<param2.priority?param1:param2;
      }

      private function jiwis(param1:Nyzena) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = new Date().getTime();
         return param1.gunavuw<_loc2_&&_loc2_<param1.pacewalo;
      }

      private function lezo(param1:Nyzena) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = this.account.getGameNet();
         return !(param1.jycutozyt.indexOf(_loc2_)==-1);
      }
   }

}