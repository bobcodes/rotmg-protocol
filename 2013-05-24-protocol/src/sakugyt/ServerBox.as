package sakugyt
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import aaa.rotmg.net.Server;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Nara;


   public class ServerBox extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ServerBox(param1:Server) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.value_=param1==null?null:param1.name;
         this.nameText_=new Lufub().setSize(18).setColor(16777215).setBold(true);
         if(param1==null)
         {
            this.nameText_.setStringBuilder(new Sire().setParams(I18nKeys.jepy));
         }
         else
         {
            this.nameText_.setStringBuilder(new Nara(param1.name));
         }
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.nameText_.x=18;
         this.nameText_.setVerticalAlign(Lufub.MIDDLE);
         this.nameText_.y=ServerBox.HEIGHT/2;
         addChild(this.nameText_);
         this.gufab(param1);
         this.draw();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public static const WIDTH:int = 384;

      public static const HEIGHT:int = 52;

      public var value_:String;

      private var nameText_:Lufub;

      private var suboreqip:Lufub;

      private var selected_:Boolean = false;

      private var over_:Boolean = false;

      private function gufab(param1:Server) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var onTextChanged:Function = null;
         var color:uint = 0;
         var text:String = null;
         var server:Server = param1;
         onTextChanged=new function():void
         {
            makeStatusText(color,text);
            return;
         };
         if(server!=null)
         {
            color=65280;
            text="ServerBox.normal";
            if(server.isServerFull())
            {
               color=16711680;
               text="ServerBox.full";
            }
            else
            {
               if(server.isServerCrowded())
               {
                  color=16549442;
                  text="ServerBox.crowded";
               }
            }
            this.nameText_.textChanged.addOnce(onTextChanged);
         }
         return;
      }

      private function makeStatusText(param1:uint, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.suboreqip=new Lufub().setSize(18).setColor(param1).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.suboreqip.setStringBuilder(new Sire().setParams(param2));
         this.suboreqip.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.suboreqip.x=WIDTH/2+WIDTH/4;
         this.suboreqip.y=ServerBox.HEIGHT/2-this.nameText_.height/2;
         addChild(this.suboreqip);
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.selected_=param1;
         this.draw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.over_=true;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.over_=false;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         if(this.selected_)
         {
            graphics.lineStyle(2,16777103);
         }
         graphics.beginFill(this.over_?7039851:6052956,1);
         graphics.drawRect(0,0,WIDTH,HEIGHT);
         if(this.selected_)
         {
            graphics.lineStyle();
         }
         return;
      }
   }

}