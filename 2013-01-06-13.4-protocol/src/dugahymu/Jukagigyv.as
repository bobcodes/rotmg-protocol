package dugahymu
{
[CLASS523]   import flash.display.Sprite;
   import pudev.Capitu;
   import pigeguwo.Mefu;
   import zehus.Caje;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import totuhare.Zufi;
   import totuhare.Javo;
   import flash.events.MouseEvent;


   public class Jukagigyv extends Sprite
   {
      public function Jukagigyv(param1:String, param2:String, param3:String, param4:Boolean) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.toolTip_=new Mefu(3552822,10197915,"","",200);
         super();
         this.sygev=param2;
         this.description_=param3;
         this.nameText_=new Capitu().setSize(13).setColor(11776947);
         this.nameText_.setStringBuilder(new Zufi().setParams(param1));
         this.sov(this.nameText_);
         this.megobebe=new Capitu().setSize(13).setColor(this.bysab).setBold(true);
         this.megobebe.setStringBuilder(new Javo("-"));
         this.sov(this.megobebe);
         this.nisug=param4;
         this.nadipaw=new Caje(this,MouseEvent.MOUSE_OVER,MouseEvent);
         this.safonu=new Caje(this,MouseEvent.MOUSE_OUT,MouseEvent);
         return;
      }

      public var sygev:String;

      public var description_:String;

      public var nameText_:Capitu;

      public var megobebe:Capitu;

      public var nisug:Boolean;

      public var val_:int = -1;

      public var boost_:int = -1;

      public var bysab:uint = 11776947;

      public var toolTip_:Mefu;

      public var nadipaw:Caje;

      public var safonu:Caje;

      public function sov(param1:Capitu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setAutoSize(TextFieldAutoSize.LEFT);
         param1.filters=[new DropShadowFilter(0,0,0)];
         addChild(param1);
         return;
      }

      public function howazi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.toolTip_.setTitle(new Zufi().setParams(this.sygev));
         this.toolTip_.rike(new Zufi().setParams(this.description_));
         if(!stage.contains(this.toolTip_))
         {
            stage.addChild(this.toolTip_);
         }
         return;
      }

      public function mivomydu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.toolTip_.parent!=null)
         {
            this.toolTip_.parent.removeChild(this.toolTip_);
         }
         return;
      }

      public function draw(param1:int, param2:int, param3:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:uint = 0;
         if(param1==this.val_&&param2==this.boost_)
         {
            return;
         }
         this.val_=param1;
         this.boost_=param2;
         if(param1-param2>=param3)
         {
            _loc4_=16572160;
         }
         else
         {
            if((this.nisug)&&this.val_<=0||this.boost_<0)
            {
               _loc4_=16726072;
            }
            else
            {
               if(this.boost_>0)
               {
                  _loc4_=6206769;
               }
               else
               {
                  _loc4_=11776947;
               }
            }
         }
         if(this.bysab!=_loc4_)
         {
            this.bysab=_loc4_;
            this.megobebe.setColor(this.bysab);
         }
         var _loc5_:String = this.val_.toString();
         if(this.boost_!=0)
         {
            _loc5_=_loc5_+(" ("+(this.boost_>0?"+":"")+this.boost_.toString()+")");
         }
         this.megobebe.setStringBuilder(new Javo(_loc5_));
         this.megobebe.x=this.nameText_.getBounds(this).right;
         return;
      }
   }
[/CLASS]
}