package dabepizyb
{
   import gera.Wezok;
   import gera.Bam;
   import gera.Feby;
   import flash.utils.Dictionary;
   import dumavap.Kowah;
   import vyso.Jez;
   import gera.Jel;
   import vyso.Vapuz;


   public class Mawy extends Object implements Wezok, Bam, Feby
   {
      public function Mawy(param1:Kowah, param2:Jez) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this._matcher=param1;
         this._handler=param2;
         return;
      }

      private const zenupi:Dictionary = new Dictionary();

      private var _matcher:Kowah;

      private var _handler:Jez;

      public function lokiduf(param1:Class) : Jel {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.hacewe(param1))||(this.gykufik(param1));
      }

      public function gypakafe(param1:Class) : Vapuz {
         return this.zenupi[param1];
      }

      public function bacohop(param1:Class) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vapuz = this.zenupi[param1];
         delete this.zenupi[[param1]];
         this._handler.wozohyk(_loc2_);
         return;
      }

      public function qutyvuj() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vapuz = null;
         for each (_loc1_ in this.zenupi)
         {
            delete this.zenupi[[_loc1_.lezybyg]];
            this._handler.wozohyk(_loc1_);
         }
         return;
      }

      private function gykufik(param1:Class) : Qace {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Qace = new Qace(this._matcher,param1);
         this._handler.rutuhu(_loc2_);
         this.zenupi[param1]=_loc2_;
         return _loc2_;
      }

      private function hacewe(param1:Class) : Qace {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Qace = this.zenupi[param1];
         if(_loc2_)
         {
            _loc2_.luzej();
         }
         return _loc2_;
      }
   }

}