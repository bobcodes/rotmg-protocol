package haj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import mukyrosu.Depa;
   import fanij.Kyruha;
   import flash.events.MouseEvent;
   import fypeba.Zikorur;
   import fypeba.Rikuko;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import wenono.Nuri;
   import mavew.Qyryl;
   import qykifavol.Hydydyqas;


   public class Kovin extends Sprite
   {
      public function Kovin(param1:Kyruha, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.tutobasu=param1;
         this.dysi=param2;
         this.qyqoviqe=new Hydydyqas(this,MouseEvent.MOUSE_OVER).add(this.bebavub);
         this.textColor=param1.cetosyc()?11776947:6710886;
         this.sal();
         this.cylarucew();
         param1.nuzum.add(this.gig);
         return;
      }

      public const fykig:Qanyduk = new Qanyduk(Qyryl);

      public var huvisa:Guzowoja;

      private var qyqoviqe:Depa;

      private var johebe:Guzowoja;

      private var tutobasu:Kyruha;

      private var dysi:int;

      private var textColor:int;

      private var tooltip:Wajuzeka;

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tutobasu.nuzum.remove(this.gig);
         return;
      }

      private function gig(param1:Kyruha) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wygafosyt();
         return;
      }

      private function bebavub(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tooltip=new Wajuzeka(this.tutobasu);
         this.tooltip.pityvigim(this);
         this.fykig.dispatch(this.tooltip);
         return;
      }

      private function cylarucew() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.beginFill(this.textColor);
         graphics.drawCircle(0,-5,1.5);
         return;
      }

      private function sal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dadydu();
         if(this.tutobasu.cetosyc())
         {
            this.wenom();
         }
         return;
      }

      private function wenom() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.huvisa=Zikorur.guta(this.textColor,13,true);
         addChild(this.huvisa);
         this.meruvi();
         this.wygafosyt();
         return;
      }

      private function wygafosyt() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.huvisa)
         {
            this.huvisa.setStringBuilder(new Kybidu().setParams(this.jepiv(this.tutobasu),{level:this.tutobasu.level}));
         }
         return;
      }

      private function dadydu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.johebe=Zikorur.guta(this.textColor,13,true);
         this.johebe.setStringBuilder(new Kybidu().setParams(this.tutobasu.name));
         this.johebe.x=3;
         addChild(this.johebe);
         return;
      }

      private function jepiv(param1:Kyruha) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1.level<Rikuko.gici?Vibemod.muqizoj:Vibemod.kynuzojuv;
      }

      private function meruvi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.huvisa.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.huvisa.x=this.dysi-this.huvisa.width;
         return;
      }
   }

}