package zegacymo
{
[CLASS1078]   import pudev.Capitu;
   import com.company.ui.Remyl;
   import tinava.Dab;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class Levozek extends Qover
   {
      public function Levozek(param1:String, param2:Boolean, param3:uint=238, param4:uint=30) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.nameText_=new Capitu().setSize(18).setColor(qomofovi);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Zufi().setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.inputText_=new Remyl(20,qomofovi,true,param3,param4);
         this.inputText_.y=30;
         this.inputText_.x=6;
         this.inputText_.border=false;
         this.inputText_.displayAsPassword=param2;
         this.inputText_.mojymak();
         addChild(this.inputText_);
         this.mibaqe(false);
         return;
      }

      public var nameText_:Capitu;

      public var inputText_:Remyl;

      public var fap:Boolean;

      public function text() : String {
         return this.inputText_.text;
      }

      override public function getHeight() : Number {
         return 68;
      }

      public function textChanged() : Dab {
         return this.nameText_.textChanged;
      }

      public function mibaqe(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fap=param1;
         bemyhu(this.inputText_,0,0,param1);
         return;
      }
   }
[/CLASS]
}