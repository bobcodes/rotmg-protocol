package zekeqa
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import com.company.ui.Vovoj;
   import jediwip.Kybidu;
   import flash.events.Event;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Pedug extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pedug(param1:String, param2:Boolean) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.nameText_=new Guzowoja().setSize(18).setColor(11776947);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Kybidu().setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.inputText_=new Vovoj(20,11776947,true,238,30);
         this.inputText_.y=30;
         this.inputText_.x=6;
         this.inputText_.border=false;
         this.inputText_.displayAsPassword=param2;
         this.inputText_.dog();
         addChild(this.inputText_);
         graphics.lineStyle(2,4539717,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(3355443,1);
         graphics.drawRect(0,this.inputText_.y,238,30);
         graphics.endFill();
         graphics.lineStyle();
         this.inputText_.addEventListener(Event.CHANGE,this.jikus);
         this.errorText_=new Guzowoja().setSize(12).setColor(16549442);
         this.errorText_.y=this.inputText_.y+32;
         this.errorText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.errorText_);
         return;
      }

      public static const HEIGHT:int = 88;

      public var nameText_:Guzowoja;

      public var inputText_:Vovoj;

      public var errorText_:Guzowoja;

      public function text() : String {
         return this.inputText_.text;
      }

      public function nirin(param1:String, param2:Object=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.errorText_.setStringBuilder(new Kybidu().setParams(param1,param2));
         return;
      }

      public function jikus(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errorText_.setStringBuilder(new Vofezuzy(""));
         return;
      }
   }

}