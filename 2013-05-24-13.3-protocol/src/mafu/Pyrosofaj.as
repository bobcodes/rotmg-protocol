package mafu
{
   import movimet.Lufub;
   import com.company.ui.Sytubyvyg;
   import tulunyno.Hugyqufyq;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class Pyrosofaj extends Hym
   {
      public function Pyrosofaj(param1:String, param2:Boolean, param3:uint=238, param4:uint=30) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.nameText_=new Lufub().setSize(18).setColor(salywoju);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Sire().setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.inputText_=new Sytubyvyg(20,salywoju,true,param3,param4);
         this.inputText_.y=30;
         this.inputText_.x=6;
         this.inputText_.border=false;
         this.inputText_.displayAsPassword=param2;
         this.inputText_.nuji();
         addChild(this.inputText_);
         this.pimaq(false);
         return;
      }

      public var nameText_:Lufub;

      public var inputText_:Sytubyvyg;

      public var viquc:Boolean;

      public function text() : String {
         return this.inputText_.text;
      }

      override public function getHeight() : Number {
         return 68;
      }

      public function textChanged() : Hugyqufyq {
         return this.nameText_.textChanged;
      }

      public function pimaq(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viquc=param1;
         lynyhobum(this.inputText_,0,0,param1);
         return;
      }
   }

}