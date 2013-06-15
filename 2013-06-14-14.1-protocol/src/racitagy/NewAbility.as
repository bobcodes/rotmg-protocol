package racitagy
{
   import vysob.Voni;
   import vysob.Kuwon;
   import flash.display.DisplayObjectContainer;
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import mukyrosu.Qanyduk;
   import haj.Rilako;
   import vysob.Dialog;


   public class NewAbility extends Sis implements Voni
   {
      public function NewAbility(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bocivagaj=new Guzowoja();
         this.nuqubu=param1;
         super("NewAbility.gratz","NewAbility.text","NewAbility.righteous",null,null);
         this.nuzopabav.add(this,Dialog.LEFT_BUTTON);
         return;
      }

      public var nuqubu:String;

      private const nuzopabav:Kuwon = new Kuwon();

      private const cyv:DisplayObjectContainer = Rilako.nato();

      private const fomipi:Number = this.cyv.width;

      private const sagemut:Number = this.cyv.height;

      private var bocivagaj:Guzowoja;

      public function motofade() : String {
         return this.nuqubu;
      }

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bocivagaj.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE).setColor(9632505).setSize(16).setBold(true).setStringBuilder(new Kybidu().setParams(this.nuqubu));
         this.cyv.addChild(this.bocivagaj);
         addChild(this.cyv);
         box_.addChild(this.cyv);
         gujas.pushArgs(this.bocivagaj.textChanged);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.drawAdditionalUI();
         this.bocivagaj.x=this.fomipi/2;
         this.bocivagaj.y=this.sagemut/2;
         this.cyv.x=(WIDTH-this.cyv.width)/2;
         this.cyv.y=wybibe.getBounds(box_).bottom+qipuvymo;
         leftButton.y=this.cyv.getBounds(box_).bottom+vytozof;
         return;
      }

      public function dadezum() : Qanyduk {
         return this.nuzopabav.dadezum();
      }
   }

}