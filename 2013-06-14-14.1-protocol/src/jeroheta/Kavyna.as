package jeroheta
{
   import pugem.Account;
   import lemugo.Wokycuku;
   import pomujukir.Kovi;
   import dicyl.Sytidyha;
   import cizagamym.Boquzojul;
   import jovurora.Divoceve;
   import kyboz.Qogevazof;
   import waryp.CharacterSelectionAndNewsScreen;
   import wahyqise.Gecekat;
   import wenono.AgeVerificationDialog;


   public class Kavyna extends Object
   {
      public function Kavyna() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var model:Wokycuku;

      public var hus:Kovi;

      public var naga:Sytidyha;

      public var ridecy:Boquzojul;

      public var servers:Divoceve;

      public var laqulesyru:Qogevazof;

      private const pot:int = 782;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.servers.bor())
         {
            this.nerule();
         }
         else
         {
            if(!this.account.zuqic())
            {
               this.woqufavu();
            }
            else
            {
               if(!this.model.cyvujymib())
               {
                  this.ciwuz();
               }
               else
               {
                  this.jesifuror();
               }
            }
         }
         return;
      }

      private function jesifuror() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hus.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function woqufavu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naga.dispatch(this.domeli());
         return;
      }

      private function domeli() : Gecekat {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gecekat = new Gecekat();
         _loc1_.tumap=true;
         _loc1_.charId=this.model.hidehab();
         _loc1_.zad=-1;
         _loc1_.jecoryt=true;
         return _loc1_;
      }

      private function ciwuz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new AgeVerificationDialog());
         return;
      }

      private function nerule() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(this.laqulesyru.qogirahi());
         return;
      }
   }

}