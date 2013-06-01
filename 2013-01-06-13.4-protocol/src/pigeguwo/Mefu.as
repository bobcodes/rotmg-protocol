package pigeguwo
{
[CLASS1091]   import pudev.Capitu;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import totuhare.Qebar;


   public class Mefu extends Jazyv
   {
      public function Mefu(param1:uint, param2:uint, param3:String, param4:String, param5:int, param6:Object=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,1,param2,1);
         if(param3!=null)
         {
            this.danypifev=new Capitu().setSize(20).setColor(16777215);
            this.loka(this.danypifev,param5,param3);
         }
         if(param4!=null)
         {
            this.tubutam=new Capitu().setSize(14).setColor(11776947);
            this.loka(this.tubutam,param5,param4,param6);
         }
         return;
      }

      public var danypifev:Capitu;

      public var tubutam:Capitu;

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tubutam.y=this.danypifev?this.danypifev.height+8:0;
         return;
      }

      public function loka(param1:Capitu, param2:int, param3:String, param4:Object=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         param1.setAutoSize(TextFieldAutoSize.LEFT);
         param1.setWordWrap(true).setTextWidth(param2);
         param1.setStringBuilder(new Zufi().setParams(param3,param4));
         param1.filters=[new DropShadowFilter(0,0,0)];
         juwocez.push(param1.textChanged);
         addChild(param1);
         return;
      }

      public function setTitle(param1:Qebar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.danypifev.setStringBuilder(param1);
         draw();
         return;
      }

      public function rike(param1:Qebar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tubutam.setStringBuilder(param1);
         draw();
         return;
      }
   }
[/CLASS]
}