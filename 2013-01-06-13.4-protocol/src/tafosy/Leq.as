package tafosy
{
[CLASS165]   import betavu.Mip;
   import dutes.Vyzynos;
   import syfuqycy.Totitig;
   import dylaqezo.Vusun;
   import dage.Fakibis;
   import hiraj.Pegygyloj;
   import syfuqycy.Nizus;
   import syfuqycy.Motumeq;
   import syfuqycy.Rewytoquk;


   public class Leq extends Object
   {
      public function Leq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pitegum:Mip;

      public var update:Rop;

      public var error:Vyzynos;

      public var peg:Totitig;

      public var player:Vusun;

      public var death:Fakibis;

      public var model:Pegygyloj;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pitegum.charId=this.jar();
         var _loc1_:Nizus = new Nizus(this.pitegum,this.wesar(),this.gewotag());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function jar() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.player.heze())&&(this.death.wahirupom()))
         {
            return this.death.gituroq().charId_;
         }
         return -1;
      }

      private function wesar() : Motumeq {
         return new Rewytoquk(this.update);
      }

      private function gewotag() : Motumeq {
         return new Rewytoquk(this.error,this.pitegum);
      }
   }
[/CLASS]
}