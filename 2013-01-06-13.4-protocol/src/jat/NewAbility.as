package jat
{
[CLASS969]   import cejyva.Qopatir;
   import cejyva.Revaz;
   import flash.display.DisplayObjectContainer;
   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import tinava.Dab;
   import fyvanod.Tilalip;
   import cejyva.Dialog;


   public class NewAbility extends Rymowig implements Qopatir
   {
      public function NewAbility(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.juzujeq=new Capitu();
         this.fuzoq=param1;
         super("NewAbility.gratz","NewAbility.text","NewAbility.righteous",null,null);
         this.momy.add(this,Dialog.LEFT_BUTTON);
         return;
      }

      public var fuzoq:String;

      private const momy:Revaz = new Revaz();

      private const batyliji:DisplayObjectContainer = Tilalip.soq();

      private const hyla:Number = this.batyliji.width;

      private const koke:Number = this.batyliji.height;

      private var juzujeq:Capitu;

      public function luvehe() : String {
         return this.fuzoq;
      }

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.juzujeq.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE).setColor(9632505).setSize(16).setBold(true).setStringBuilder(new Zufi().setParams(this.fuzoq));
         this.batyliji.addChild(this.juzujeq);
         addChild(this.batyliji);
         box_.addChild(this.batyliji);
         cebyriby.pushArgs(this.juzujeq.textChanged);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.drawAdditionalUI();
         this.juzujeq.x=this.hyla/2;
         this.juzujeq.y=this.koke/2;
         this.batyliji.x=(WIDTH-this.batyliji.width)/2;
         this.batyliji.y=wan.getBounds(box_).bottom+holinecuc;
         leftButton.y=this.batyliji.getBounds(box_).bottom+siqed;
         return;
      }

      public function gif() : Dab {
         return this.momy.gif();
      }
   }
[/CLASS]
}