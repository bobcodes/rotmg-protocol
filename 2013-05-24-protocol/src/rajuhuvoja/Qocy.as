package rajuhuvoja
{
   import flash.utils.getDefinitionByName;
   import bidav.Keho;
   import bidav.Puz;
   import flash.display.DisplayObject;
   import flash.events.Event;


   public class Qocy extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qocy(param1:Keho) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this._factory=param1;
         this._factory.addEventListener(Puz.baky,this.gyzyloky);
         this._factory.addEventListener(Puz.sypinyle,this.vonihewo);
         return;
      }

      private static var banovam:Class;

      private static const libydelal:Boolean = fapolo();

      private static function fapolo() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         try
         {
            banovam=getDefinitionByName("mx.core::UIComponent") as Class;
         }
         catch(error:Error)
         {
         }
         return !(banovam==null);
      }

      private var _factory:Keho;

      private function gyzyloky(param1:Puz) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var mediator:Object = null;
         var displayObject:DisplayObject = null;
         var event:Puz = param1;
         mediator=event.mediator;
         displayObject=event.view as DisplayObject;
         if(!displayObject)
         {
            this.rubad(event.view,mediator);
            return;
         }
         displayObject.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         if((libydelal)&&displayObject is banovam&&!displayObject["initialized"])
         {
            displayObject.addEventListener("creationComplete",new function(param1:Event):void
            {
               displayObject.removeEventListener("creationComplete",arguments.callee);
               if(_factory.sewedoh(displayObject,event.mapping))
               {
                     rubad(displayObject,mediator);
               }
               return;
               });
            }
            else
            {
               this.rubad(displayObject,mediator);
            }
            return;
      }

      private function vonihewo(param1:Puz) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:DisplayObject = param1.view as DisplayObject;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
         if(param1.mediator)
         {
            this.rekim(param1.mediator);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._factory.hukad(param1.target);
         return;
      }

      private function rubad(param1:Object, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2.hasOwnProperty("viewComponent"))
         {
            param2.viewComponent=param1;
         }
         if(param2.hasOwnProperty("initialize"))
         {
            param2.initialize();
         }
         return;
      }

      private function rekim(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.hasOwnProperty("destroy"))
         {
            param1.destroy();
         }
         return;
      }
   }

}