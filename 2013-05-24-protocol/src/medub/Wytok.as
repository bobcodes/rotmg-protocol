package medub
{
   import aaa.rotmg.account.Account;
   import hotewa.Baqifa;
   import raqu.Wolugyty;
   import zubamyki.Qaf;
   import wegyluke.Hez;
   import aaa.rotmg.ui.ServersContainer;
   import rilyq.Fen;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import cuwyg.Tibeto;
   import ruwysepyd.AgeVerificationDialog;


   public class Wytok extends Object
   {
      public function Wytok() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var model:Baqifa;

      public var bykiry:Wolugyty;

      public var luribodi:Qaf;

      public var naval:Hez;

      public var servers:ServersContainer;

      public var wyke:Fen;

      private const husylosot:int = 782;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.servers.hasServers())
         {
            this.gotu();
         }
         else
         {
            if(!this.account.bugi())
            {
               this.walo();
            }
            else
            {
               if(!this.model.gywufo())
               {
                  this.tynaw();
               }
               else
               {
                  this.cewotajyn();
               }
            }
         }
         return;
      }

      private function cewotajyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bykiry.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function walo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.luribodi.dispatch(this.liwalep());
         return;
      }

      private function liwalep() : Tibeto {
         var _loc1_:Tibeto = new Tibeto();
         _loc1_.needsToCreateNewChar=true;
         _loc1_.charId=this.model.getNextCharId();
         _loc1_.keyTime=-1;
         _loc1_.myto=true;
         return _loc1_;
      }

      private function tynaw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new AgeVerificationDialog());
         return;
      }

      private function gotu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(this.wyke.detuloca());
         return;
      }
   }

}