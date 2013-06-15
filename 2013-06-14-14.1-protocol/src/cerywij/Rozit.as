package cerywij
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import mavew.Qyrola;
   import qykifavol.Hydydyqas;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import jediwip.Vofezuzy;
   import flash.events.MouseEvent;


   public class Rozit extends Sprite
   {
      public function Rozit(param1:String, param2:String, param3:String, param4:Boolean) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.toolTip_=new Qyrola(3552822,10197915,"","",200);
         super();
         this.celowajy=param2;
         this.description_=param3;
         this.nameText_=new Guzowoja().setSize(13).setColor(11776947);
         this.nameText_.setStringBuilder(new Kybidu().setParams(param1));
         this.wuqyku(this.nameText_);
         this.qaqyveqe=new Guzowoja().setSize(13).setColor(this.hebyjok).setBold(true);
         this.qaqyveqe.setStringBuilder(new Vofezuzy("-"));
         this.wuqyku(this.qaqyveqe);
         this.sabyj=param4;
         this.jacafav=new Hydydyqas(this,MouseEvent.MOUSE_OVER,MouseEvent);
         this.pyhajev=new Hydydyqas(this,MouseEvent.MOUSE_OUT,MouseEvent);
         return;
      }

      public var celowajy:String;

      public var description_:String;

      public var nameText_:Guzowoja;

      public var qaqyveqe:Guzowoja;

      public var sabyj:Boolean;

      public var val_:int = -1;

      public var boost_:int = -1;

      public var hebyjok:uint = 11776947;

      public var toolTip_:Qyrola;

      public var jacafav:Hydydyqas;

      public var pyhajev:Hydydyqas;

      public function wuqyku(param1:Guzowoja) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.setAutoSize(TextFieldAutoSize.LEFT);
         param1.filters=[new DropShadowFilter(0,0,0)];
         addChild(param1);
         return;
      }

      public function heneved() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.toolTip_.setTitle(new Kybidu().setParams(this.celowajy));
         this.toolTip_.kenadyb(new Kybidu().setParams(this.description_));
         if(!stage.contains(this.toolTip_))
         {
            stage.addChild(this.toolTip_);
         }
         return;
      }

      public function jiqoretyj() : void {
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
            if((this.sabyj)&&this.val_<=0||this.boost_<0)
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
         if(this.hebyjok!=_loc4_)
         {
            this.hebyjok=_loc4_;
            this.qaqyveqe.setColor(this.hebyjok);
         }
         var _loc5_:String = this.val_.toString();
         if(this.boost_!=0)
         {
            _loc5_=_loc5_+(" ("+(this.boost_>0?"+":"")+this.boost_.toString()+")");
         }
         this.qaqyveqe.setStringBuilder(new Vofezuzy(_loc5_));
         this.qaqyveqe.x=this.nameText_.getBounds(this).right;
         return;
      }
   }

}