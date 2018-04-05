precision highp float;

// near, far, fovy, aspect
uniform mat4 projection;

// camera position, up, target (lookAt)
uniform mat4 view;

// posicao, rotacao e escala (e cisalhamento) do objeto no espaco
uniform mat4 model;

uniform vec2 luz;

varying vec3 vpos;

void main() {

	float dist = distance(luz.xy,vpos.xy);

	float ndist = dist / sqrt(8.0);

	float tom = 1.0 - ndist;

	float t32 = pow(tom,32.0);
	float t16 = pow(tom,16.0);
	float t8 = pow(tom,8.0);
	float t6 = pow(tom,6.0);
	float t4 = pow(tom,4.0);
	float t2 = pow(tom,2.0);

	//float tom = (vpos.x + 1.0) / 2.0;

	gl_FragColor = vec4(t32,t8,t2,1.0);
}
