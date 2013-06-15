package gabufo
{
   import hivysif.Guzowoja;
   import com.company.ui.Vovoj;
   import mukyrosu.Qanyduk;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class Qiwug extends Kipasi
   {
      public function Qiwug(param1:String, param2:Boolean, param3:uint=238, param4:uint=30) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.nameText_=new Guzowoja().setSize(18).setColor(wokijeny);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Kybidu().setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.inputText_=new Vovoj(20,wokijeny,true,param3,param4);
         this.inputText_.y=30;
         this.inputText_.x=6;
         this.inputText_.border=false;
         this.inputText_.displayAsPassword=param2;
         this.inputText_.dog();
         addChild(this.inputText_);
         this.nis(false);
         return;
      }

      public var nameText_:Guzowoja;

      public var inputText_:Vovoj;

      public var hyja:Boolean;

      public function text() : String {
         return this.inputText_.text;
      }

      override public function getHeight() : Number {
         return 68;
      }

      public function textChanged() : Qanyduk {
         return this.nameText_.textChanged;
      }

      public function nis(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hyja=param1;
         cuzeke(this.inputText_,0,0,param1);
         return;
      }
   }

}