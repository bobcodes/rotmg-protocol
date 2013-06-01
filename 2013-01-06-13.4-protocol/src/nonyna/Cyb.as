package nonyna
{
[CLASS1081]   import flash.display.Sprite;
   import pudev.Capitu;
   import com.company.ui.Remyl;
   import totuhare.Zufi;
   import flash.events.Event;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Cyb extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cyb(param1:String, param2:Boolean) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.nameText_=new Capitu().setSize(18).setColor(11776947);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Zufi().setParams(param1));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.inputText_=new Remyl(20,11776947,true,238,30);
         this.inputText_.y=30;
         this.inputText_.x=6;
         this.inputText_.border=false;
         this.inputText_.displayAsPassword=param2;
         this.inputText_.mojymak();
         addChild(this.inputText_);
         graphics.lineStyle(2,4539717,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         graphics.beginFill(3355443,1);
         graphics.drawRect(0,this.inputText_.y,238,30);
         graphics.endFill();
         graphics.lineStyle();
         this.inputText_.addEventListener(Event.CHANGE,this.mesyho);
         this.errorText_=new Capitu().setSize(12).setColor(16549442);
         this.errorText_.y=this.inputText_.y+32;
         this.errorText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.errorText_);
         return;
      }

      public static const HEIGHT:int = 88;

      public var nameText_:Capitu;

      public var inputText_:Remyl;

      public var errorText_:Capitu;

      public function text() : String {
         return this.inputText_.text;
      }

      public function famugujo(param1:String, param2:Object=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.errorText_.setStringBuilder(new Zufi().setParams(param1,param2));
         return;
      }

      public function mesyho(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errorText_.setStringBuilder(new Javo(""));
         return;
      }
   }
[/CLASS]
}