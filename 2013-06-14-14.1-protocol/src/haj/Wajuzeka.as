package haj
{
   import mavew.Qyryl;
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import fanij.Kyruha;
   import jediwip.Kybidu;
   import fypeba.Rikuko;
   import fypeba.Zikorur;


   public class Wajuzeka extends Qyryl
   {
      public function Wajuzeka(param1:Kyruha) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(3552822,1,16777215,1,true);
         this.goficyj.setTextWidth(200).setWordWrap(true);
         this.laret=param1;
         this.jifajenuj();
         this.sal();
         return;
      }

      private const kokejaz:Sprite = new Sprite();

      private const gehovip:Guzowoja = Zikorur.kapybyhy(16777215,16,true,true);

      private const goficyj:Guzowoja = Zikorur.kapybyhy(16777215,14,false,true);

      private var laret:Kyruha;

      private function sal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         ryfoc.push(this.gehovip.textChanged);
         ryfoc.push(this.goficyj.textChanged);
         this.gehovip.setStringBuilder(new Kybidu().setParams(this.laret.name));
         this.goficyj.setStringBuilder(new Kybidu().setParams(this.laret.description));
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kokejaz.addChild(this.gehovip);
         this.kokejaz.addChild(this.goficyj);
         addChild(this.kokejaz);
         return;
      }

      override protected function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gehovip.x=Rikuko.zedylubac;
         this.gehovip.y=Rikuko.dafygyfyk;
         this.goficyj.x=Rikuko.zedylubac;
         this.goficyj.y=this.gehovip.y+this.gehovip.height;
         return;
      }
   }

}