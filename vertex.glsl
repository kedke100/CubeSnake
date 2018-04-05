precision highp float;

attribute vec3 position;

// near, far, fovy, aspect
uniform mat4 projection;

// camera position, up, target (lookAt)
uniform mat4 view;

// posicao, rotacao e escala (e cisalhamento) do objeto no espaco
uniform mat4 model;


varying vec3 vpos;

void main() {

	vpos = position;

	vec4 point = vec4(position, 1.0);

	gl_Position =  projection * view * model * point;

}
