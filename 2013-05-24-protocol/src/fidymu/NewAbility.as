package fidymu
{
   import nas.Facuca;
   import nas.Num;
   import flash.display.DisplayObjectContainer;
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import tulunyno.Hugyqufyq;
   import coh.Qudymasaj;
   import nas.Dialog;


   public class NewAbility extends Tuneji implements Facuca
   {
      public function NewAbility(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vebavycuw=new Lufub();
         this.batidihyb=param1;
         super("NewAbility.gratz","NewAbility.text","NewAbility.righteous",null,null);
         this.magymi.add(this,Dialog.LEFT_BUTTON);
         return;
      }

      public var batidihyb:String;

      private const magymi:Num = new Num();

      private const cifuby:DisplayObjectContainer = Qudymasaj.qijehokyt();

      private const bopyhuguv:Number = this.cifuby.width;

      private const ruhyjiryf:Number = this.cifuby.height;

      private var vebavycuw:Lufub;

      public function lecyzad() : String {
         return this.batidihyb;
      }

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vebavycuw.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE).setColor(9632505).setSize(16).setBold(true).setStringBuilder(new Sire().setParams(this.batidihyb));
         this.cifuby.addChild(this.vebavycuw);
         addChild(this.cifuby);
         box_.addChild(this.cifuby);
         nujapo.pushArgs(this.vebavycuw.textChanged);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.drawAdditionalUI();
         this.vebavycuw.x=this.bopyhuguv/2;
         this.vebavycuw.y=this.ruhyjiryf/2;
         this.cifuby.x=(WIDTH-this.cifuby.width)/2;
         this.cifuby.y=qicoqymuj.getBounds(box_).bottom+myno;
         leftButton.y=this.cifuby.getBounds(box_).bottom+wotasyduh;
         return;
      }

      public function polojubu() : Hugyqufyq {
         return this.magymi.polojubu();
      }
   }

}