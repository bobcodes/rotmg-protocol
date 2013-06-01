package qefinah
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import povopito.Jodehozut;
   import gyzesuqu.Tybabukyr;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import nec.Sire;
   import nec.Nara;
   import flash.events.MouseEvent;


   public class Dyloq extends Sprite
   {
      public function Dyloq(param1:String, param2:String, param3:String, param4:Boolean) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.toolTip_=new Jodehozut(3552822,10197915,"","",200);
         super();
         this.meqavada=param2;
         this.description_=param3;
         this.nameText_=new Lufub().setSize(13).setColor(11776947);
         this.nameText_.setStringBuilder(new Sire().setParams(param1));
         this.tafomipum(this.nameText_);
         this.nejutek=new Lufub().setSize(13).setColor(this.fofe).setBold(true);
         this.nejutek.setStringBuilder(new Nara("-"));
         this.tafomipum(this.nejutek);
         this.gik=param4;
         this.piboc=new Tybabukyr(this,MouseEvent.MOUSE_OVER,MouseEvent);
         this.pynece=new Tybabukyr(this,MouseEvent.MOUSE_OUT,MouseEvent);
         return;
      }

      public var meqavada:String;

      public var description_:String;

      public var nameText_:Lufub;

      public var nejutek:Lufub;

      public var gik:Boolean;

      public var val_:int = -1;

      public var boost_:int = -1;

      public var fofe:uint = 11776947;

      public var toolTip_:Jodehozut;

      public var piboc:Tybabukyr;

      public var pynece:Tybabukyr;

      public function tafomipum(param1:Lufub) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setAutoSize(TextFieldAutoSize.LEFT);
         param1.filters=[new DropShadowFilter(0,0,0)];
         addChild(param1);
         return;
      }

      public function rapatu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.toolTip_.setTitle(new Sire().setParams(this.meqavada));
         this.toolTip_.sonydiw(new Sire().setParams(this.description_));
         if(!stage.contains(this.toolTip_))
         {
            stage.addChild(this.toolTip_);
         }
         return;
      }

      public function nepijawij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.toolTip_.parent!=null)
         {
            this.toolTip_.parent.removeChild(this.toolTip_);
         }
         return;
      }

      public function draw(param1:int, param2:int, param3:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
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
            if((this.gik)&&this.val_<=0||this.boost_<0)
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
         if(this.fofe!=_loc4_)
         {
            this.fofe=_loc4_;
            this.nejutek.setColor(this.fofe);
         }
         var _loc5_:String = this.val_.toString();
         if(this.boost_!=0)
         {
            _loc5_=_loc5_+(" ("+(this.boost_>0?"+":"")+this.boost_.toString()+")");
         }
         this.nejutek.setStringBuilder(new Nara(_loc5_));
         this.nejutek.x=this.nameText_.getBounds(this).right;
         return;
      }
   }

}