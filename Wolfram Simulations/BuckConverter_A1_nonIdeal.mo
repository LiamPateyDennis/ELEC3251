model BuckConverter_A1_nonIdeal
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 12) annotation(Placement(visible = true, transformation(origin = {-115, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1e-3) annotation(Placement(visible = true, transformation(origin = {-1.626, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-6) annotation(Placement(visible = true, transformation(origin = {18.374, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 560) annotation(Placement(visible = true, transformation(origin = {58.374, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-115, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width = 59.62, period = 1e-5) annotation(Placement(visible = true, transformation(origin = {-130, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  InverterParts.NonIdeal_Components.NonIdeal_Switch nonIdeal_Switch1(RseriesOn = 0.07, Turn_on_time = 4.9e-9, Turn_off_time = 19e-9, ReverseDiodeKnee = 1.3, Imax = 17, Vmax = 55) annotation(Placement(visible = true, transformation(origin = {-85, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  InverterParts.NonIdeal_Components.DiodeRR diodeRR1(Cj = 1.1e-10, V_Knee = 0.7) annotation(Placement(visible = true, transformation(origin = {-55, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 1.6) annotation(Placement(visible = true, transformation(origin = {-35, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(inductor1.n, capacitor1.p) annotation(Line(visible = true, origin = {15.041, 13.333}, points = {{-6.667, 6.667}, {3.333, 6.667}, {3.333, -13.333}}, color = {10, 90, 224}));
  connect(resistor1.p, inductor1.n) annotation(Line(visible = true, origin = {41.707, 13.333}, points = {{16.667, -13.333}, {16.667, 6.667}, {-33.333, 6.667}}, color = {10, 90, 224}));
  connect(ground1.p, constantVoltage1.n) annotation(Line(visible = true, origin = {-115, -30}, points = {{0, -10}, {-0, 10}}, color = {10, 90, 224}));
  connect(resistor1.n, capacitor1.n) annotation(Line(visible = true, origin = {38.374, -38.001}, points = {{20, 18.001}, {20, -1.999}, {-20, -1.999}, {-20, 18.001}}, color = {10, 90, 224}));
  connect(constantVoltage1.p, nonIdeal_Switch1.pin_p) annotation(Line(visible = true, origin = {-108.333, 13.333}, points = {{-6.667, -13.333}, {-6.667, 6.667}, {13.333, 6.667}}, color = {10, 90, 224}));
  connect(diodeRR1.p, ground1.p) annotation(Line(visible = true, origin = {-85, -42.5}, points = {{30, 22.5}, {30, 2.5}, {-30, 2.5}, {-30, 2.5}}, color = {10, 90, 224}));
  connect(diodeRR1.n, nonIdeal_Switch1.pin_n) annotation(Line(visible = true, origin = {-61.667, 13.333}, points = {{6.667, -13.333}, {6.667, 6.667}, {-13.333, 6.667}}, color = {10, 90, 224}));
  connect(resistor2.n, inductor1.p) annotation(Line(visible = true, origin = {-21.626, 20}, points = {{-3.374, 0}, {10, 0}}, color = {10, 90, 224}));
  connect(resistor2.p, nonIdeal_Switch1.pin_n) annotation(Line(visible = true, origin = {-60, 20}, points = {{15, 0}, {-15, 0}}, color = {10, 90, 224}));
  connect(booleanPulse1.y, nonIdeal_Switch1.control) annotation(Line(visible = true, origin = {-97.8, 29.6}, points = {{-21.2, 30.4}, {-2.2, 30.4}, {-2.2, -24.6}, {12.8, -24.6}, {12.8, -11.6}}, color = {255, 0, 255}));
  connect(diodeRR1.p, capacitor1.n) annotation(Line(visible = true, origin = {-18.313, -37.5}, points = {{-36.687, 17.5}, {-36.687, -2.5}, {36.687, -2.5}, {36.687, 17.5}}, color = {10, 90, 224}));
  annotation(uses(Modelica(version = "3.2.3"), Buildings(version = "6.0.1")), experiment(StopTime = 2), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end BuckConverter_A1_nonIdeal;
